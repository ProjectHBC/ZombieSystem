#> sys:repeat/in-game/zombie_movement/movement/forward/
#
# 前方向への移動
#
# @within function sys:repeat/in-game/zombie_movement/delta_pos_y

# 足元にブロックを設置
    execute as @s at @s run playsound minecraft:block.stone.place block @a ^ ^-0.5 ^0.25
    execute as @s at @s run setblock ^ ^-0.5 ^0.25 minecraft:cobblestone
    execute as @s at @s run summon minecraft:area_effect_cloud ^ ^-0.5 ^0.25 {Duration:201,Age:0,Tags:["Iruru.zombie_block"]}
    