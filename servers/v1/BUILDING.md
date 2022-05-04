# building
## release
1. `./download.sh`が実行される
2. `./pack.sh`が実行される
3. `./push_git.sh`が実行される

## debug
1. `./download.sh`を実行する
2. カレントディレクトリに、`mods`フォルダが入った`run`フォルダができる
3. ランチャーを開いて`run`フォルダを指定する

## hand
```sh
# climate
gawk -F '\t' '{ print "    S:\""gensub(/[ \t]+/, "", "g", gensub(":", "_", "1", $3))" climate" "\"="gensub(" ", "", "g", $6) }' < ./run/config/tellme/biomes_2022-05-04_20.45.54.txt
#
```