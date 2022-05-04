#!/bin/bash
wd=$(mktemp -d)
cp -r run/config $wd/config
cp -r run/mods $wd/mods

if [[ "x$DETAILED_NAME" == "x" ]]; then
  file_name="packed.zip"
else
  file_name="packed_$(TZ='Asia/Tokyo' date +%Y-%m-%d_%H.%M.%S)_git-$(git rev-parse HEAD).zip"
fi

(cd $wd && zip -9r $file_name .) && cp $wd/$file_name .
rm -r $wd
