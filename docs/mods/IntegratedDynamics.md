# IntegratedDynamics
NOTE: このページは https://w.atwiki.jp/ftbinteractions_v2/pages/31.html の内容を参考にしています

## 用語
### Menril Tree
よく使うらしい。とりあえず集めとくのが吉？

### Variable Card
このMODの一番楽しいところである変数を格納するカード。多分大量に使う。

### Value
|種類|説明|
|:--|:--|
|静的|いつでも同じ|
|動的|変わるよ|

### 型

|名前|説明|
|:--|:--|
|Fluid|液体|
|Ingredients|多分アイテム|
|Integer|±(2^31)|
|Recipe|多分レシピ|
|List|添字が0始まりのリスト|
|Block|ブロック|
|Long|±(2^63)|
|Boolean|`true`or`false`|
|Double|多分[±(1.8×10^308)の小数](https://ja.wikipedia.org/wiki/%E5%80%8D%E7%B2%BE%E5%BA%A6%E6%B5%AE%E5%8B%95%E5%B0%8F%E6%95%B0%E7%82%B9%E6%95%B0#%E5%80%8D%E7%B2%BE%E5%BA%A6%E6%B5%AE%E5%8B%95%E5%B0%8F%E6%95%B0%E7%82%B9%E6%95%B0%E3%81%AE%E4%BE%8B)を扱える|
|Float|[±(3.4×10^38)の小数](https://ja.wikipedia.org/wiki/%E5%8D%98%E7%B2%BE%E5%BA%A6%E6%B5%AE%E5%8B%95%E5%B0%8F%E6%95%B0%E7%82%B9%E6%95%B0#%E5%8D%98%E7%B2%BE%E5%BA%A6%E6%B5%AE%E5%8B%95%E5%B0%8F%E6%95%B0%E7%82%B9%E6%95%B0%E3%81%AE%E4%BE%8B)を略|
|Item|アイテム|
|Operator|関数|
|NBT|NBTタグ|
|Number|`Integer` or `Long` or `Float` or `Double`|
|Entity|エンティティ|

## 関数リファレンス
|関数|型|説明|
|:--|:--|:--|
|`And`|`(lhs: Boolean, rhs: Boolean) -> Boolean`|論理積: `lhs && rhs`|
