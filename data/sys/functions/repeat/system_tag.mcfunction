#> sys:repeat/system_tag
#
# タグを使った処理他
#
# @within function sys:repeat/

# コマンド
    # サーバーにいるプレイヤー人数をカウント
        execute store result score $player iruru.player if entity @a
    # サーバーにいるプレイヤー人数が0のときに一時停止する(予期せぬ不具合の対処のため)
        execute if score $check iruru.check matches 1 if score $player iruru.player matches 0 run function cmd:game/pause
    # survivorタグを持つエンティティ人数をカウント
        scoreboard players set $survivor iruru.survivor 0
        #execute as @a[tag=Iruru.survivor] run scoreboard players add $survivor iruru.survivor 1
        execute store result score $survivor iruru.survivor if entity @e[tag=Iruru.survivor]
    # survivorタグを持つエンティティをIruru.survivorチームに参加させる
        team join Iruru.survivor @e[tag=Iruru.survivor]
    # survivorが0人になったときゲームを終了する
        execute if score $check iruru.check matches 1 if score $survivor iruru.survivor matches 0 unless score $player iruru.player matches 0 run function sys:fail_safe/game/end
    # 動いていないゾンビにタグ付け
        tag @e[tag=Iruru.standing] remove Iruru.standing
        tag @e[tag=!Iruru.standing,type=#zombie,nbt={Motion:[0.0,-0.0784000015258789d,0.0]}] add Iruru.standing

# 座標
    # サバイバー
        execute as @e[team=Iruru.survivor] store result score @s iruru.pos_x run data get entity @s Pos[0]
        execute as @e[team=Iruru.survivor] store result score @s iruru.pos_y run data get entity @s Pos[1]
        execute as @e[team=Iruru.survivor] store result score @s iruru.pos_z run data get entity @s Pos[2]
    # ゾンビ
        execute as @e[type=#zombie] store result score @s iruru.pos_x run data get entity @s Pos[0]
        execute as @e[type=#zombie] store result score @s iruru.pos_y run data get entity @s Pos[1]
        execute as @e[type=#zombie] store result score @s iruru.pos_z run data get entity @s Pos[2]

# ベクトル
    # ゾンビ
        #execute as @e[type=#zombie] store result score @s iruru.motion_x run data get entity @s Motion[0]
        #execute as @e[type=#zombie] store result score @s iruru.motion_y run data get entity @s Motion[1]
        #execute as @e[type=#zombie] store result score @s iruru.motion_z run data get entity @s Motion[2]
