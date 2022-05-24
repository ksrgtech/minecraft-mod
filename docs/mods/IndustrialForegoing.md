# Industrial Foregoing

全て自動化しよう！ -- by GitHub Page

## レーザー
* Laser Baseを一つ、Laser Drillを一つから四つ作る。効率性のために四つをおすすめする。
* 配置はLaser Baseを中央に置き、一マスの空気ブロックを挟んで東西南北のいずれかにLaser Drill
  * Laser Drillは向きがあるので注意
* Laser Lens (以降長いので単にレンズ) を作る。レンズを作るにはピンクスライムが必要。
* レンズは染料で染める。
* レンズの色によって取れる鉱石が違う。詳細はJEIを参照。
  * Min Y: 最低座標
  * Max Y: 最大座標
  * Weight: 相対的な確率 (高いほど生成されやすい)

## 自動化
### Dye Mixer
[FTB](https://ftb.fandom.com/wiki/Dye_Mixer)
赤、緑、青の染料を入れて動かす。電力供給とレンズも必要。レンズは消費しない。
この機械はクラフトよりも良いレートで染料を合成する。

### Enchant Sorter
エンチャントされているアイテムとエンチャントされていないアイテムを仕分ける。

### Petrified Fuel Generator
* 精錬で燃料として扱えるアイテムの内、その燃焼時間をRF/tickに換算して出力する。
* 燃焼時間はどのアイテムも同じなので、燃焼時間が長いアイテムを突っ込むことで風力発電機をリストラすることができるかもしれない。
* 例えばそこにMystical AgricultureのBlock of \*ium Coalを突っ込んだらどうなる？楽しい！

### Enchant Extractor
* アイテムから一つエンチャントを除去して本に移動させる
* アイテムの耐久値は変わらない

### Enchant Applicator
* Essenceを消費してアイテムにエンチャントをつける
* 基本的に金床とやることは同じ

### Mob Crusher
* モブを殺す
* ドロップしたアイテムを回収する
* 経験値をEssenceに変換する
* "Adult Filter Addon" をつけることで大人のMOBだけ殺す

### Potion Brewer
* 醸造台の自由度が高まったバージョン
* 空のボトルと原料を適用する
* 原料は左から右に適用される

### Animal Baby Separator
* 子供の動物を後ろから前に移動させる
* "Adult Filter Addon" をつけることで対象が大人になる

### Animal Feeder
* 動物にエサをやる
* 動作範囲には最大35体の動物が入れる

### Plant Sower
* 作物および苗木を植え付ける
* インベントリの色は天面の色と対応している

### Plant Fertilizer
* 作物の成長を促進する

## 液体
### ピンクスライム (Pink Slime)
* Mob Slaughter Factory (以下長いのでMSF) が排出する。一体に付きデフォルトで20mb。
* バケツに汲んで流して放置するとピンクスライムがスポーンする。
* ピンクスライムからはピンクスライムボールがドロップする。
* MSFで溜まるのは遅いので、MSFを複数台設置するか、スポナーを並列化したほうが良い。
* ピンクスライムは`slimeball`として鉱石辞書に登録されているが、普通のスライムボールとして使うのはその大変さからおすすめしない。以下に一例をあげる。
  * 粘着ピストン
  * リード
  * マグマクリーム
  * スライムブロック
  * MekanismのSlick Plastic Block
  * OpenBlocksのSponge
  * OpenBlocksのMagic Crayon
  * OpenBlocksのEpic Eraser
  * Storage DrawersのPacking Tape

### Essence
