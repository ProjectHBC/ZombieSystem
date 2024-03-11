#> sys:repeat/in-game/zombie_movement/
#
# ゾンビの行動ルールを変える、41~50日のみ有効
#
# @within function sys:repeat/in-game/after41days

# ゾンビが実行
    execute as @e[type=#zombie] run function sys:repeat/in-game/zombie_movement/as_zombie

# ゾンビの設置したブロックの処理
    execute as @e[tag=Iruru.zombie_block] run function sys:repeat/in-game/zombie_movement/zombie_block/
