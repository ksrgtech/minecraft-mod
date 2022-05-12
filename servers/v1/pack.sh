#!/bin/bash
function die() {
  echo "$(tput setab 1)$(tput setaf 15)$*$(tput init)"
  exit 1
}

wd=$(mktemp -d)
cp -r run/config $wd/config
cp -r run/mods $wd/mods

git_tag="$(git rev-parse HEAD)"
current_date=$(TZ='Asia/Tokyo' date +%Y-%m-%d_%H-%M-%S)
if [[ "x$DETAILED_NAME" == "x" ]]; then
  file_name="packed.zip"
else
  file_name="packed_${current_date}_git-$git_tag.zip"
fi

(cd $wd && zip -9r $file_name .) && cp $wd/$file_name .
rm -r $wd

if [[ "$UPLOAD" != "" ]]; then
  [[ "$GITHUB_TOKEN" == "" ]] && die "\$GITHUB_TOKEN must be provided"
  [[ "$GITHUB_LOGIN" == "" ]] && die "\$GITHUB_LOGIN must be provided"
  [[ "$GITHUB_REPO" == "" ]] && die "\$GITHUB_REPO must be provided"

  readonly release_url="https://api.github.com/repos/$GITHUB_LOGIN/$GITHUB_REPO/releases"
  readonly login=$(curl -q \
    -H "Accept: application/vnd.github.v3+json" \
    -H "Authorization: token $GITHUB_TOKEN" \
    https://api.github.com/user \
      | jq '.login')
  echo "logged in as $login"
  echo "POST $release_url"
  readonly release_name="$current_date+git-$git_tag"
  readonly create_release=$(curl \
    -X POST \
    -H "Accept: application/vnd.github.v3+json" \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "User-Agent: $login" \
    "$release_url" \
    -d "$(
      jq -nc \
      --arg release_name "$release_name" \
      '{"tag_name": $release_name}'
    )")

  readonly upload_url="$(echo "$create_release" | jq -r '.upload_url' | sed -E "s/\{[^\}]+\}$//")?name=$release_name.zip"

  echo Uploading to $upload_url

  curl \
    -X POST \
    -H "Accept: application/vnd.github.v3+json" \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "User-Agent: $login" \
    -H "Content-Type: application/zip" \
    --data-binary @"$file_name" \
    "$upload_url" | jq
fi
