#> adv:placed/recursive
#
# チェストを置いた時の再帰function
#
# @within function adv:placed/**

# 再帰
#particle end_rod ~ ~ ~
execute if block ~ ~ ~ air positioned ^ ^ ^0.5 run function adv:placed/recursive

# チェストデータを変更
data merge block ~ ~ ~ {CustomName:'{"text":"chest"}'}
