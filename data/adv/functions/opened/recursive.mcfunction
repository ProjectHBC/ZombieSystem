#> adv:opened/recursive
#
# チェストを開いた時の再帰function
#
# @within function adv:opened/**

# 再帰
#particle end_rod ~ ~ ~
execute if block ~ ~ ~ air positioned ^ ^ ^0.5 run function adv:opened/recursive

# チェストデータを変更
execute if data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} run data merge block ~ ~ ~ {LootTable:"minecraft:chests/jungle_temple",CustomName:'{"text":"chest"}'}
