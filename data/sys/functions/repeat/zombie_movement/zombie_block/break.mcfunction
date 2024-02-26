#> sys:repeat/zombie_movement/zombie_block/break
#
# 置換した苔むした丸石を破壊する
#
# @within function sys:repeat/zombie_movement/zombie_block/

# 破壊
    execute at @s run playsound minecraft:block.stone.break block @a ~ ~ ~
    execute align xyz run fill ~ ~ ~ ~ ~ ~ air replace mossy_cobblestone
    execute align xyz run particle block mossy_cobblestone ~ ~0.5 ~ 0.3 0.3 0.3 15 30 normal
    