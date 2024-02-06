#> sys:repeat/zombie_movement/movement/upward/place_block_for3-1
#
# エンティティが居る、もしくはいた場所にブロック設置
#
# @within function sys:repeat/zombie_movement/movement/upward/**

# 足元にブロックを設置(指定ブロックのときにのみ置換)
    execute as @e[type=#zombie,tag=Iruru.3blocks] at @s if block ~ ~ ~ #minecraft:can_place run playsound minecraft:block.stone.place block @a ~ ~ ~
    execute as @e[type=#zombie,tag=Iruru.3blocks] at @s align xyz if block ~ ~ ~ #minecraft:can_place run setblock ~ ~ ~ minecraft:cobblestone
