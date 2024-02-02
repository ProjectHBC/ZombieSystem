#> sys:repeat/zombie_movement/
#
# ゾンビの行動ルールを変える
#
# @within function sys:repeat/

# ゾンビの位置からサバイバーが32ブロック以内にいる時に実行
    execute as @e[type=#zombie] at @s if entity @a[team=Iruru.survivor,distance=..32,sort=nearest,gamemode=survival] run function sys:repeat/zombie_movement/delta_pos_y
