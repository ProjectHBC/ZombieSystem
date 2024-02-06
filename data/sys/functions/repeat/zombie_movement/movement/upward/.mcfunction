#> sys:repeat/zombie_movement/movement/upward/
#
# 上方向への移動
#
# @within function sys:repeat/zombie_movement/delta_pos_y

# プレイヤーとゾンビのy座標の差が3以下(-3以上)のとき1マス上方向にジャンプ
    execute as @s at @s if score @s iruru.d_pos_y matches -3.. if block ~ ~ ~ #minecraft:can_place run function sys:repeat/zombie_movement/movement/upward/1block
# プレイヤーとゾンビのy座標の差が4以上(-4以下)のとき3マス上方向にジャンプ
    execute as @s at @s if score @s iruru.d_pos_y matches ..-4 if block ~ ~ ~ #minecraft:can_place run function sys:repeat/zombie_movement/movement/upward/3blocks
