# ZombieSystem
[![release](https://img.shields.io/github/release/ProjectHBC/zombie_system?logo=github)](https://github.com/ProjectHBC/zombie_system/releases)
[![license](https://img.shields.io/github/license/ProjectHBC/zombie_system?logo=github)](https://github.com/ProjectHBC/zombie_system/blob/master/LICENSE)

## ZombieSystem

ゲームの進行を手助けするための専用のデータパック。  
指定されたmod環境下でしかコマンドがうまく機能しない可能性があります。  
  
👇このデータパックを採用したシリーズ👇  
[【Minecraft】荒廃したゾンビ世界を50日間生き残る](https://www.youtube.com/playlist?list=PLviBljJRqhEAdNvjM5ueIv4RUXA_kGZz4)  
<a href="https://www.youtube.com/playlist?list=PLviBljJRqhEAdNvjM5ueIv4RUXA_kGZz4">
    <img width="336" height="188" src="https://i.ytimg.com/vi/uXa1U7W-kDo/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBTMhYKCcGiccE84HPY7Oa7fnsSew" alt="【Minecraft】荒廃したゾンビ世界を50日間生き残る">
</a>

※URLまたは画像クリックでYoutube再生リストへ飛びます。

## 動作環境

Minecraft Forge 1.16.5

## リリース

リリースやリリースノートについては[こちら](https://github.com/ProjectHBC/zombie_system/releases)

## データパックについて

基本的なことだけ記述。
リリースノート読めば大抵書いてあります。

#### ゲームの開始方法

- ロードメニューのスタートボタン
- /function cmd:game/start

#### ゲームの一時停止方法

- ワールドを開き直す
- /function cmd:game/pause

#### ゲームの再開方法

- /function cmd:game/play

#### ゲームの終了方法

- プレイヤーの全滅
- /function cmd:game/end

## 小ネタ/解説

このデータパックを作るうえで学んだ知識の備忘録。

### ルートチェスト化

疑似的にチェストをルートチェスト化させています。  
以下はリリースノートに書いてあるものを再編したものです。  
リリースノートも読むことを推奨します。  
文章が拙いところはご愛嬌、わからないところがあれば[iruru1111](https://twitter.com/iruru1111)までどうぞ。  

#### 説明
- 利点  
この疑似ルートチェストは、ルートチェストとして扱いたいチェストが特定できないときに有効です。あああ  
- 欠点  
プレイヤーがチェストを開くことでチェストを特定しているのでルートチェストを破壊して  
中身を回収することはできません。
また、ツタやはしごなどのブロック越しにチェストを開くとルートチェスト化されない場合があります。
ラージチェストは、ラージチェストでルートチェスト化されないので、1個ずつ開けるしかありません。  
このシステム環境下では、チェストに名前をつけることができません。  
- ルートチェスト判定方法  
ルートチェストの判定ですが、ルートチェストとして扱わないチェスト(プレイヤーが設置したチェスト等)は  
名前を"chest"として区別しています。ルートチェストの方は、リフィルを実装したかったので  
"chest_[NUMBER]"の形で区別しています。  
- ルートチェスト化について  
プレイヤーがチェストを開くと、コマンドが実行されるようにしています。  
具体的には、advancementのminecraft:item_used_on_blockを利用しています。  
(詳しくはデータパック内のjsonファイルを参照してください。)  
その後、再帰関数として視点先をairが検知できなくなるまで(チェストの座標に当たるまで)関数を実行し、  
チェストの座標を取得します。  
取得できたチェストに対してRNGやlootを用いてチェストをルートチェスト化させています。  
lootを複数用いたかったのでRNGで抽選しています。  
本データパックでは、確率はすべて同じですが、ここでレアルートに分けることとかも可能そうですね。  
- プレイヤーが設置したチェスト  
このままでは、プレイヤーが設置したチェストもルートチェスト化されてしまうので、  
前述したルートチェスト化の手順とほとんど同様の検知方法で処理しています。  
具体的には、advancementのminecraft:placed_blockを利用しています。  
(詳しくはデータパック内のjsonファイルを参照してください。)  
ここでプレイヤーが設置したチェスト及び元からアイテムが入っていたチェストをルートチェスト化から  
外すようにしています。    
- プレイヤーがルートチェストを設置できるバグへの対処  
ただ上記の方法だけではルートチェスト化してしまうバグがありました。  
チェストは完全なフルブロックではないのでブロックの端のほうに視点を合わせて設置すると  
ルートチェストを置けてしまうバグです。  
このバグに対処するためにプレイヤーのインベントリ内にあるチェストに"chest"と  
最初からつけることで対応しました。  
具体的には、advancementのminecraft:inventory_changedを利用しています。  
(詳しくはデータパック内のjsonファイルを参照してください。)  
インベントリ変更があったチェストに対してデータの書き換えを行なっています。  
- インベントリ内のチェストのデータ書き換えについて  
プレイヤーのnbtデータは書き換えが不可能なので別の場所に移して書き換えて返却しています。  
0,1,0にシュルカーボックスを設置して、nbtデータを書き換えて返却…という流れです。  
(詳しくはデータパック内のmcfunctionファイルを参照してください。)  
また返却には、プレイヤーインベントリの全スロットを実行しているのでもしかしたら  
負荷が多少かかっているかもしれません。  
負荷が大きい場合には二分探索で軽量化させると良いでしょうね。  
  
#### 参考にさせて頂いたサイト他:  
[Minecraft Japan Command Discord サーバー](https://discordapp.com/invite/DENP2Ej)  
[プレイヤーのアイテム操作 - マインクラフト技術事典](https://wiki3.jp/minecraft_technology/page/14)  

## ライセンス

このソフトウェアは、MITライセンスのもとで公開されています。詳しくは[LICENSE](https://github.com/ProjectHBC/zombie_system/blob/master/LICENSE)をご覧ください。  
These codes are released under the MIT License, see [LICENSE](https://github.com/ProjectHBC/zombie_system/blob/master/LICENSE).

## お願い

願わくば、データパック名及び作者名(iruru1111)の明記があるとありがたいです。

## 連絡
https://twitter.com/iruru1111
