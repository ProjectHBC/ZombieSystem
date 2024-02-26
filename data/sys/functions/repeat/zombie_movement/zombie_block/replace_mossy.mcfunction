#> sys:repeat/zombie_movement/zombie_block/replace_mossy
#
# ゾンビが設置した丸石を苔むした丸石に置換する
#
# @within function sys:repeat/zombie_movement/zombie_block/

# 苔むした丸石に置換
    execute at @s run playsound minecraft:block.weeping_vines.place block @a ~ ~ ~
    execute align xyz run fill ~ ~ ~ ~ ~ ~ mossy_cobblestone replace cobblestone
    