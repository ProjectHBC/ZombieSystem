#> sys:event/custom_spawner/summon_zombie
#
# 一定周期でゾンビをスポーンさせる為のファイル
#
# @within function sys:event/custom_spawner/set

# ゾンビ召喚 x4
    execute at @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=0}] run summon zombie ~ ~1 ~
    execute at @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=0}] run summon zombie ~ ~1 ~
    execute at @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=0}] run summon zombie ~ ~1 ~
    execute at @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=0}] run summon zombie ~ ~1 ~

# タイマーリセット
    scoreboard players operation @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=0}] iruru.cs_timer = $cs_timer iruru.cs_timer
