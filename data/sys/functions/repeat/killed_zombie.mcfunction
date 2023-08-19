#> sys:repeat/killed_zombie
#
# ゾンビのキル数をカウント及び計算する
#
# @within function sys:repeat/

# コマンド
    # killed_zombie(calculation)
        scoreboard players operation @a[scores={iruru.killed_z=1..}] iruru.killed_zs += @a[scores={iruru.killed_z=1..}] iruru.killed_z
        scoreboard players operation @a[scores={iruru.killed_zv=1..}] iruru.killed_zs += @a[scores={iruru.killed_zv=1..}] iruru.killed_zv
        scoreboard players operation @a[scores={iruru.killed_d=1..}] iruru.killed_zs += @a[scores={iruru.killed_d=1..}] iruru.killed_d
        scoreboard players operation @a[scores={iruru.killed_h=1..}] iruru.killed_zs += @a[scores={iruru.killed_h=1..}] iruru.killed_h
    
    # killed_zombie_*(reset)
        scoreboard players set @a iruru.killed_z 0
        scoreboard players set @a iruru.killed_zv 0
        scoreboard players set @a iruru.killed_d 0
        scoreboard players set @a iruru.killed_h 0
