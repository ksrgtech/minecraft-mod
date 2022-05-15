#!/bin/bash

file="$1"
echo "$PASSWORD" | gpg --batch --yes --passphrase-fd 0 --pinentry-mode loopback --decrypt "$file"
