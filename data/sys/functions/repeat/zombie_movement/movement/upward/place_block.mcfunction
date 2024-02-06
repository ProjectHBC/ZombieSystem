#> sys:repeat/zombie_movement/movement/upward/place_block
#
# エンティティが居る、もしくはいた場所にブロック設置
#
# @within function sys:repeat/zombie_movement/movement/upward/**

# 足元にブロックを設置(指定ブロックのときにのみ置換)
    execute as @s at @s if block ~ ~ ~ #minecraft:can_place run playsound minecraft:block.stone.place block @a ~ ~ ~
    execute as @s at @s align xyz if block ~ ~ ~ #minecraft:can_place run setblock ~ ~ ~ minecraft:cobblestone
