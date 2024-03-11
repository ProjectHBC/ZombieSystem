#> sys:repeat/always/system_tag
#
# タグを使った処理他
#
# @within function sys:repeat/always/

# サーバーにいるプレイヤー人数をカウント
    execute store result score $player iruru.player if entity @a
# サーバーにいるプレイヤー人数が0のときに一時停止する(予期せぬ不具合の対処のため)
    execute if score $check iruru.check matches 1 if score $player iruru.player matches 0 run function cmd:game/pause
# survivorタグを持つエンティティ人数をカウント
    scoreboard players set $survivor iruru.survivor 0
    execute store result score $survivor iruru.survivor if entity @a[tag=Iruru.survivor]
# survivorが0人になったときゲームを終了する
    execute if score $check iruru.check matches 1 if score $survivor iruru.survivor matches 0 unless score $player iruru.player matches 0 run function sys:fail_safe/game/end
