#!/bin/bash
# NOTE: this script is intended for deployment.

set -x
function die() {
  echo "$*"
  exit 1
}

function dl() {
  URL="$1"
  FILE="$2"
  echo "Downloading $URL as $FILE"
  curl -Lso "$MOD_DIR/$FILE.jar" "$URL"
}

function curse_dl() {
  set -e
  # shellcheck disable=SC2016
  x=$(mktemp)
  # ✝✝✝!!!META-PROGRAMMING!!!✝✝✝
  curl \
      -q \
      -X POST \
      -H "Accept: application/json" \
      -H "Content-Type: application/json" \
      -H "x-api-key: $CURSE_API_KEY" \
      -d@cf_mods.json \
      https://api.curseforge.com/v1/mods/files \
    | jq \
      -r \
      --arg curse $CURSE_API_KEY \
      --arg dir $MOD_DIR \
      '.data[] | {fileId: .id, modId, fileName} | ("curl -qf -H \"Accept: application/json\" -H \u0027x-api-key: " + $curse + "\u0027 " + "https://api.curseforge.com/v1/mods/" + (.modId | tostring) + "/files/" + (.fileId | tostring) + "/download-url" + " | " + "jq -r \u0027.data\u0027" + " | " + "tr -d \u0027\\n\u0027" + " | " + "xargs -0 -i wget {} -O \"" + $dir + "/" + .fileName + "\"")' \
    | tee "$x" >/dev/null # Yeah, this is a security risk
  chmod +x "$x"
  /bin/bash -n "$x"
  $x
  ls run/mods
  file run/mods/*.jar
  rm "$x"
}

DIR=run

[ -z "$DIR" ] && die "\$DIR can not be empty"
[ ! -d "$DIR" ] && mkdir -p "$DIR"
if [ -z "$CURSE_API_KEY" ]; then
  die "CFCore token must be provided via \$CURSE_API_KEY"
else
  echo "Yeah"
fi

MOD_DIR=$DIR/mods
rm -r $MOD_DIR || true
mkdir -p $MOD_DIR

dl "https://optifine.net/downloadx?f=OptiFine_1.12.2_HD_U_G5.jar&x=79875e46fbbc1166cb1d14b96c5a684a" "OptiFine_1.12.2_HD_U_G5"
dl "https://www.dropbox.com/sh/mlfsx6b3z5ek8wv/AACCf_0tDiPo8fd2rwa0CoEia/SpawnChecker/Minecraft_1.12.x/SpawnChecker-2.7.7.137.jar?dl=1" "SpawnChecker-2.7.7.137"
dl "https://web.archive.org/web/20190715131820/https://forum.minecraftuser.jp/download/file.php?id=75930" "StorageBox-3.2.0"
dl "https://github.com/KisaragiEffective/publicfile/blob/master/RTG-1.12.2-6.1.0.0-snapshot.2+flavored.ksrg.git-b7769d2dc6d0941922a26090dd1c15328eb4d1d0?raw=true" "RTG-1.12.2-6.1.0.0-snapshot.2+flavored.ksrg.git-b7769d2dc6d0941922a26090dd1c15328eb4d1d0"
curse_dl
