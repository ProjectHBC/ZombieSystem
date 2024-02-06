#> sys:repeat/zombie_movement/delta_pos_y
#
# プレイヤーとゾンビのY座標の差を計算し、上方向に動いて良いか判定する
#
# @within function sys:repeat/zombie_movement/

# Y座標に関する計算
    # ゾンビのY座標を差の計算用スコアボードに格納
        scoreboard players operation @s iruru.d_pos_y = @s iruru.pos_y
    # プレイヤーとゾンビのY座標の差を計算し、ゾンビ側の計算用スコアボードに格納
        scoreboard players operation @s iruru.d_pos_y -= @a[team=Iruru.survivor,distance=..32,sort=nearest,gamemode=survival] iruru.pos_y

# Y座標の差を利用した動き
    # プレイヤーのY座標>ゾンビのY座標でなくてはいけないので、d_pos_y<=-1であるかつ静止しているときに実行
        execute if score @s iruru.d_pos_y matches ..-1 as @s[tag=Iruru.standing] run function sys:repeat/zombie_movement/movement/upward/
    # プレイヤーとゾンビのY座標が同じときかつ2ブロック下が#can_place(air)でないときに実行
        execute if score @s iruru.d_pos_y matches 0 at @s if entity @a[team=Iruru.survivor,distance=..32,sort=nearest,gamemode=survival] if block ~ ~-2 ~ #minecraft:can_place run function sys:repeat/zombie_movement/movement/forward/
