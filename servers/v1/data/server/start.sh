#!/bin/bash

if [[ -f "FAILFLAG" ]]; then
  echo "FLAG!!" >&2
  exit 1
fi

readonly SERVERDIR=`dirname $0`

cd ${SERVERDIR}

# shellcheck disable=SC2155
export PASSWORD=$(cat the-secret-password-do-not-leak-to-external.txt)
/home/mcserver/mc/decrypt.sh whitelist.json.asc > whitelist.json
/home/mcserver/mc/decrypt.sh discord-webhook.url.asc > discord-webhook.url

/usr/bin/jq -n --arg date "$(date +%Y-%m-%dT%H-%M-%S%z)" \
  '{"content": ("[" + $date + "] starting ragi v1"), "username": "start.sh"}' \
  | /usr/bin/curl -fsSL \
     -d@- \
     -H "Content-Type: application/json" \
     --url "$(cat discord-webhook.url)"

# https://github.com/ksrgtech/minecraft-mod/issues/108
/usr/lib/jvm/temurin-8-jdk-arm64/bin/java \
       -Xmx10G \
       -Dfml.queryResult=confirm \
       -jar /home/mcserver/mc/server.jar

/usr/bin/jq -n --arg date "$(date +%Y-%m-%dT%H-%M-%S%z)" \
  '{"content": ("[" + $date + "] stopping ragi v1"), "username": "start.sh"}' \
  | /usr/bin/curl -fsSL \
     -d@- \
     -H "Content-Type: application/json" \
     --url "$(cat discord-webhook.url)"
