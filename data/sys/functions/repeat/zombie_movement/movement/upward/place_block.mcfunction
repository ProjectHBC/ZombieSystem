#> sys:repeat/zombie_movement/movement/upward/place_block
#
# エンティティが居る、もしくはいた場所にブロック設置
#
# @within function sys:repeat/zombie_movement/movement/upward/**

# 足元にブロックを設置(指定ブロックのときにのみ置換)
    execute as @s at @s run playsound minecraft:block.stone.place block @a ~ ~ ~
    execute as @s at @s align xyz run setblock ~ ~ ~ minecraft:cobblestone
    execute as @s at @s align xyz run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:201,Age:0,Tags:["Iruru.zombie_block"]}
