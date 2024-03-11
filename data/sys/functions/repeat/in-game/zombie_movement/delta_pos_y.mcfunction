#> sys:repeat/in-game/zombie_movement/delta_pos_y
#
# プレイヤーとゾンビのY座標の差を計算し、上か横方向に動いて良いか判定する
#
# @within function sys:repeat/in-game/zombie_movement/as_zombie

# Y座標に関する計算
    # ゾンビのY座標を差の計算用スコアボードに格納
        scoreboard players operation @s iruru.d_pos_y = @s iruru.pos_y
    # プレイヤーとゾンビのY座標の差を計算し、ゾンビ側の計算用スコアボードに格納
        scoreboard players operation @s iruru.d_pos_y -= @p[team=Iruru.survivor,distance=..16,gamemode=survival] iruru.pos_y

# Y座標の差を利用した動き
    # プレイヤーのY座標>ゾンビのY座標でなくてはいけないので、d_pos_y<=-1であるかつ静止しているときに実行
        execute if score @s iruru.d_pos_y matches ..-1 as @s[tag=Iruru.standing] run function sys:repeat/in-game/zombie_movement/movement/upward/
    # プレイヤーとゾンビのY座標が同じときかつ2ブロック下が#can_placeのときに実行
        execute if score @s iruru.d_pos_y matches 0 as @s[nbt={OnGround:1b}] at @s rotated ~ 0 if entity @p[team=Iruru.survivor,distance=..16,gamemode=survival] if block ^ ^-0.5 ^0.25 #minecraft:can_place if block ^ ^-1.5 ^0.25 #minecraft:can_place run function sys:repeat/in-game/zombie_movement/movement/forward/
