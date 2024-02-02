#> sys:repeat/zombie_movement/movement/upward
#
# 上方向への移動
#
# @within function sys:repeat/zombie_movement/delta_pos_y

# 上方向にジャンプ(足元が空気のときにのみ、ベクトル代入)
    execute as @s at @s if block ~ ~ ~ air run data modify entity @s Motion set value [0d,0.425d,0d]
# 足元にブロックを設置(空気のときにのみ)
    execute at @s run playsound minecraft:block.stone.place block @a ~ ~ ~
    execute as @s at @s align xyz run setblock ~ ~ ~ minecraft:cobblestone keep
