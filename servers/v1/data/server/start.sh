#!/bin/bash
readonly SERVERDIR=`dirname $0`

cd ${SERVERDIR}

PASSWORD=$(cat the-secret-password-do-not-leak-to-external.txt) /home/mcserver/mc/decrypt.sh whitelist.json.asc > whitelist.json
/usr/lib/jvm/temurin-8-jdk-arm64/bin/java \
       -Xmx10G \
       -jar /home/mcserver/mc/minecraft_server.1.12.2.jar
