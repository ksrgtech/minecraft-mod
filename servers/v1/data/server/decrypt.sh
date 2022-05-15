#!/bin/bash

file="$1"
echo "$PASSWORD" | gpg --batch --yes --passphrase-fd 0 --decrypt "$file"
