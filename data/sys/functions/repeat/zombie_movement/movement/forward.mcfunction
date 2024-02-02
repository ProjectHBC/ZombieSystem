#> sys:repeat/zombie_movement/movement/forward
#
# 前方向への移動
#
# @within function sys:repeat/zombie_movement/delta_pos_y

# 足元にブロックを設置
    execute at @s run playsound minecraft:block.stone.place block @a ~ ~-1 ~
    execute at @s align xyz run setblock ~ ~-1 ~ minecraft:cobblestone keep
    