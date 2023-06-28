#> adv:opened/recursive
#
# チェストを開いた時の再帰function
#
# @within function adv:opened/**

# 再帰
    #particle end_rod ~ ~ ~
    execute if block ~ ~ ~ air positioned ^ ^ ^0.5 run function adv:opened/recursive

# チェストデータを変更
    function loot:chest_random
