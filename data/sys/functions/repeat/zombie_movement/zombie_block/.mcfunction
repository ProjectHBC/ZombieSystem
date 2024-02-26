#> sys:repeat/zombie_movement/zombie_block/
#
# ゾンビのブロック設置した経過時間をカウント、及びブロック置換
#
# @within function sys:repeat/zombie_movement/

# ゾンビのブロック設置した経過時間をカウント
    execute as @s run scoreboard players add @s iruru.z_block 1

# aecのある場所がairなら消す
    execute as @s at @s align xyz if block ~ ~ ~ air run kill @s

# ブロック置換
    execute as @s at @s if score @s iruru.z_block matches 140 run function sys:repeat/zombie_movement/zombie_block/replace_mossy
    execute as @s at @s if score @s iruru.z_block matches 200 run function sys:repeat/zombie_movement/zombie_block/break
