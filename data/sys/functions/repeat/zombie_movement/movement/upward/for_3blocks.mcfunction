#> sys:repeat/zombie_movement/movement/upward/for_3blocks
#
# 3段ジャンプ用の関数
#
# @within function sys:repeat/zombie_movement/

# 3段ジャンプ用のスコア管理
    execute as @s if score @s iruru.3blocks matches ..0 run scoreboard players reset @s iruru.3blocks
    execute as @s if score @s iruru.3blocks matches 1.. run scoreboard players remove @s iruru.3blocks 1

# 3段ジャンプ用の実行処理
    execute as @s if score @s iruru.3blocks matches 3 run function sys:repeat/zombie_movement/movement/upward/place_block
    execute as @s if score @s iruru.3blocks matches 1 run function sys:repeat/zombie_movement/movement/upward/place_block
    