#> sys:repeat/zombie_movement/movement/forward/
#
# 前方向への移動
#
# @within function sys:repeat/zombie_movement/delta_pos_y

# 足元にブロックを設置
    execute as @s at @s if block ~ ~-1 ~ #minecraft:can_place run playsound minecraft:block.stone.place block @a ~ ~-1 ~
    execute as @s at @s align xyz if block ~ ~-1 ~ #minecraft:can_place run setblock ~ ~-1 ~ minecraft:cobblestone
    