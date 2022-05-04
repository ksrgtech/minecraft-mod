#!/bin/bash
wd=$(mktemp -d)
cp -r run/mods $wd/mods
cp -r data/config $wd/config
file_name="packed_$(TZ='Asia/Tokyo' date +%Y-%m-%d_%H.%M.%S)_git-$(git rev-parse HEAD).zip"
(cd $wd && zip -9r $file_name .) && cp $wd/$file_name .