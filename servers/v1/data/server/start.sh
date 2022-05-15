#!/bin/bash
PASSWORD=$(cat the-secret-password-do-not-leak-to-external.txt) /home/mcserver/mc/decrypt.sh whitelist.json.asc > whitelist.json &&
/usr/bin/screen -Dm -S mc /usr/bin/java -Xmx10G -jar /home/mcserver/mc/server.jar
