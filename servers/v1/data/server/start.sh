#!/bin/bash
readonly SERVERDIR=`dirname $0`

cd ${SERVERDIR}

PASSWORD=$(cat the-secret-password-do-not-leak-to-external.txt) /home/mcserver/mc/decrypt.sh whitelist.json.asc > whitelist.json
# https://github.com/ksrgtech/minecraft-mod/issues/108
/usr/lib/jvm/temurin-8-jdk-arm64/bin/java \
       -Xmx10G \
       -Dfml.queryResult=confirm \
       -jar /home/mcserver/mc/server.jar
