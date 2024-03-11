#> sys:repeat/in-game/zombie_status/controller
#
# ゾンビ用のリピート - $check = 1 の時のみ常時実行
#
# @within function sys:repeat/in-game/

# zombie
    # $day = 1~3 - lv1
        execute if score $day iruru.daycount matches 1..3 as @e[type=#zombie,tag=!Iruru.lv1] run function sys:repeat/in-game/zombie_status/lv1
        execute if score $day iruru.daycount matches 1..3 run scoreboard players set $levels iruru.levels 1
    
    # $day = 4~7 - lv2
        execute if score $day iruru.daycount matches 4..7 as @e[type=#zombie,tag=!Iruru.lv2] run function sys:repeat/in-game/zombie_status/lv2
        execute if score $day iruru.daycount matches 4..7 run scoreboard players set $levels iruru.levels 2
    
    # $day = 8~10 - lv3
        execute if score $day iruru.daycount matches 8..10 as @e[type=#zombie,tag=!Iruru.lv3] run function sys:repeat/in-game/zombie_status/lv3
        execute if score $day iruru.daycount matches 8..10 run scoreboard players set $levels iruru.levels 3

    # $day = 11~15 - lv4
        execute if score $day iruru.daycount matches 11..15 as @e[type=#zombie,tag=!Iruru.lv4] run function sys:repeat/in-game/zombie_status/lv4
        execute if score $day iruru.daycount matches 11..15 run scoreboard players set $levels iruru.levels 4
    
    # $day = 16~20 - lv5
        execute if score $day iruru.daycount matches 16..20 as @e[type=#zombie,tag=!Iruru.lv5] run function sys:repeat/in-game/zombie_status/lv5
        execute if score $day iruru.daycount matches 16..20 run scoreboard players set $levels iruru.levels 5
    
    # $day = 21~25 - lv6
        execute if score $day iruru.daycount matches 21..25 as @e[type=#zombie,tag=!Iruru.lv6] run function sys:repeat/in-game/zombie_status/lv6
        execute if score $day iruru.daycount matches 21..25 run scoreboard players set $levels iruru.levels 6
    
    # $day = 26~30 - lv7
        execute if score $day iruru.daycount matches 26..30 as @e[type=#zombie,tag=!Iruru.lv7] run function sys:repeat/in-game/zombie_status/lv7
        execute if score $day iruru.daycount matches 26..30 run scoreboard players set $levels iruru.levels 7
    
    # $day = 31~35 - lv8
        execute if score $day iruru.daycount matches 31..35 as @e[type=#zombie,tag=!Iruru.lv8] run function sys:repeat/in-game/zombie_status/lv8
        execute if score $day iruru.daycount matches 31..35 run scoreboard players set $levels iruru.levels 8
    
    # $day = 36~40 - lv9
        execute if score $day iruru.daycount matches 36..40 as @e[type=#zombie,tag=!Iruru.lv9] run function sys:repeat/in-game/zombie_status/lv9
        execute if score $day iruru.daycount matches 36..40 run scoreboard players set $levels iruru.levels 9
    
    # $day = 41~45 - lv10
        execute if score $day iruru.daycount matches 41..45 as @e[type=#zombie,tag=!Iruru.lv10] run function sys:repeat/in-game/zombie_status/lv10
        execute if score $day iruru.daycount matches 41..45 run scoreboard players set $levels iruru.levels 10

    # $day = 46~49 - lv11
        execute if score $day iruru.daycount matches 46..49 as @e[type=#zombie,tag=!Iruru.lv11] run function sys:repeat/in-game/zombie_status/lv11
        execute if score $day iruru.daycount matches 46..49 run scoreboard players set $levels iruru.levels 11

    # $day = 50 - lv12
        execute if score $day iruru.daycount matches 50 as @e[type=#zombie,tag=!Iruru.lv12] run function sys:repeat/in-game/zombie_status/lv12
        execute if score $day iruru.daycount matches 50 run scoreboard players set $levels iruru.levels 12

    # $day = 51~ - lv0
        execute if score $day iruru.daycount matches 51.. as @e[type=#zombie,tag=!Iruru.lv0] run function sys:repeat/in-game/zombie_status/lv0
        execute if score $day iruru.daycount matches 51.. run scoreboard players set $levels iruru.levels 0
