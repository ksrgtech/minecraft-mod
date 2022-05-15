#!/bin/bash
# NOTE: this script is only boot-strap
# You should edit whitelist.json
set -ex

function die() {
  echo "$(tput setab 1)$(tput setaf 15)$*$(tput init)" >&2
  exit 1
}

file="$1"
syntax_error_lines="$(grep -Evc "^[A-Za-z0-9_]{0,16}$" "$file" || echo "0")"
if [[ "$syntax_error_lines" -gt 0 ]]; then
  die "$syntax_error_lines line have syntax error. Please take look at your text."
else
  echo "No errors. Great!"
fi

temp="$(mktemp)"
while read -r user
do
  # 1. You must append to file, otherwise the file content will be last user.
  # 2. This endpoint returns uuid w/0 hyphens. We must insert them properly.
  curl https://api.mojang.com/users/profiles/minecraft/$user | jq '{name, "uuid": ([. | tostring | match("([a-f0-9]{8})([a-f0-9]{4})([a-f0-9]{4})([a-f0-9]{4})([a-f0-9]{12})") | .captures[] | .string] | join("-"))}' >> "$temp"
done < "$file"

# s means convert iterator to array (no)
jq -s '.' < "$temp" > whitelist.json
