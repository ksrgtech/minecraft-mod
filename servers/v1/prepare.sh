#!/bin/bash
# NOTE: this script is intended for deployment.

set -x
function die() {
  echo "$(tput setab 1)$(tput setaf 15)$*$(tput init)"
  exit 1
}

function pre_execute() {
  rm -r $MOD_DIR || true
  mkdir -p $MOD_DIR
  [ -z "$DIR" ] && die "\$DIR can not be empty"
  [ ! -d "$DIR" ] && mkdir -p "$DIR"
  [[ "$PROFILE" != "multi_server" && "$PROFILE" != "multi_client" && "$PROFILE" != "single" ]] && die "You must specify one of 'multi_server', 'multi_client' or 'single' in \$PROFILE"

  if [ -z "$CURSE_API_KEY" ]; then
    die "CFCore token must be provided via \$CURSE_API_KEY. Please get it from https://console.curseforge.com"
  else
    echo "CFCore token is provided"
  fi
}

function dl() {
  URL="$1"
  FILE="$2"
  echo "Downloading $URL as $FILE"
  if [[ "$DRYRUN" == "" ]]; then
    curl -Lso "$MOD_DIR/$FILE.jar" "$URL"
  fi
}

function echo-bar() {
  echo "-------------------------------------------------------"
}

function curse_dl() {
  set -e
  local x
  x=$(mktemp)
  # ✝✝✝!!!META-PROGRAMMING!!!✝✝✝
  # shellcheck disable=SC2016
  jq --arg profile "$PROFILE" '{"fileIds": [.[] | select(.profile[$profile] == true) | .id]}' cf_mods.json \
    | curl \
      -q \
      -X POST \
      -H "Accept: application/json" \
      -H "Content-Type: application/json" \
      -H "x-api-key: $CURSE_API_KEY" \
      -d@- \
      https://api.curseforge.com/v1/mods/files \
    | jq \
      -r \
      --arg curse $CURSE_API_KEY \
      --arg dir $MOD_DIR \
      '.data[] | {fileId: .id, modId, fileName} | ("curl -qf -H \"Accept: application/json\" -H \u0027x-api-key: " + $curse + "\u0027 " + "https://api.curseforge.com/v1/mods/" + (.modId | tostring) + "/files/" + (.fileId | tostring) + "/download-url" + " | " + "wget \"$(jq -r \u0027.data\u0027 | tr -d \"\\n\")\" -O \"" + $dir + "/" + (.fileName | gsub("\u0027"; "")) + "\"")' \
    | tee "$x" >/dev/null # Yeah, this is a security risk
  chmod +x "$x"
  # syntax validation
  /bin/bash -n "$x"
  echo "Install script:"
  echo-bar
  cat "$x"
  echo-bar
  if [[ "$DRYRUN" == "" ]]; then
    $x
    ls run/mods
    file run/mods/*.jar
  fi
  rm "$x"
}

DIR=run
MOD_DIR=$DIR/mods

pre_execute

# NOTE: OptiFine is not auto-installable.
if [[ "$PROFILE" == "multi_server" ]]; then
  # see #23
  dl "https://repo.spongepowered.org/repository/maven-releases/org/spongepowered/spongeforge/1.12.2-2838-7.4.7/spongeforge-1.12.2-2838-7.4.7.jar" "spongeforge-1.12.2-2838-7.4.7"
fi

if [[ "$PROFILE" == "multi_client" ]]; then
  dl "https://github.com/KisaragiEffective/publicfile/blob/master/xaero-map-null-potion-1.0.2.jar?raw=true" "xaero-map-null-potion-1.0.2.jar"
fi

dl "https://www.dropbox.com/sh/mlfsx6b3z5ek8wv/AACCf_0tDiPo8fd2rwa0CoEia/SpawnChecker/Minecraft_1.12.x/SpawnChecker-2.7.7.137.jar?dl=1" "SpawnChecker-2.7.7.137"
dl "https://web.archive.org/web/20190715131820/https://forum.minecraftuser.jp/download/file.php?id=75930" "StorageBox-3.2.0"
dl "https://github.com/KisaragiEffective/publicfile/blob/master/RTG-1.12.2-6.1.0.0-snapshot.2+flavored.ksrg.git-b7769d2dc6d0941922a26090dd1c15328eb4d1d0?raw=true" "RTG-1.12.2-6.1.0.0-snapshot.2+flavored.ksrg.git-b7769d2dc6d0941922a26090dd1c15328eb4d1d0"
dl "https://github.com/KisaragiEffective/Sakura_mod/releases/download/1.0.8-1.12.2%2Bflavored.ksrg.4/Sakura-1.0.8-1.12.2+flavored.ksrg.4.jar" "Sakura-1.0.8-1.12.2+flavored.ksrg.4"

curse_dl

PROFILE="$PROFILE" DIR="$DIR" ./copy.sh
