#> sys:zombie_repeat
#
# ゾンビ用のリピート - $check = 1 の時のみ常時実行
#
# @within function sys:core/tick

#> IruruLevels
# @private
    #declare tag Iruru.lv1
    #declare tag Iruru.lv2
    #declare tag Iruru.lv3
    #declare tag Iruru.lv4
    #declare tag Iruru.lv5
    #declare tag Iruru.lv6

    #schedule function sys:load_loop 3s replace

# zombie
        # speed 0.1~2.0 => 1~20
    # $day = 1~5 (SPD-0.5x)(lv1)
        execute as @e[type=#zombie,tag=!Iruru.lv1] if score $day iruru.daycount matches 1..5 run attribute @s generic.movement_speed base set 0.11500000208
        execute as @e[type=#zombie,tag=!Iruru.lv1] if score $day iruru.daycount matches 1..5 run tag @s add Iruru.lv1
        execute if score $day iruru.daycount matches 1..5 run scoreboard players set $levels iruru.levels 1
    
    # $day = 6~10 (SPD-0.75x)(lv2)
        execute as @e[type=#zombie,tag=!Iruru.lv2] if score $day iruru.daycount matches 6..10 run attribute @s generic.movement_speed base set 0.17250000312
        execute as @e[type=#zombie,tag=!Iruru.lv2] if score $day iruru.daycount matches 6..10 run tag @s add Iruru.lv2
        execute if score $day iruru.daycount matches 6..10 run scoreboard players set $levels iruru.levels 2
    
    # $day = 11~15 (SPD-1.25x)(lv3)
        execute as @e[type=#zombie,tag=!Iruru.lv3] if score $day iruru.daycount matches 11..15 run attribute @s generic.movement_speed base set 0.28750000521
        execute as @e[type=#zombie,tag=!Iruru.lv3] if score $day iruru.daycount matches 11..15 run effect give @s jump_boost 999999 0 true
        execute as @e[type=#zombie,tag=!Iruru.lv3] if score $day iruru.daycount matches 11..15 run tag @s add Iruru.lv3
        execute if score $day iruru.daycount matches 11..15 run scoreboard players set $levels iruru.levels 3

    # $day = 16~30 (SPD-1.5x)(lv4)
        execute as @e[type=#zombie,tag=!Iruru.lv4] if score $day iruru.daycount matches 16..30 run attribute @s generic.movement_speed base set 0.34500000625
        execute as @e[type=#zombie,tag=!Iruru.lv4] if score $day iruru.daycount matches 16..30 run effect give @s jump_boost 999999 1 true
        execute as @e[type=#zombie,tag=!Iruru.lv4] if score $day iruru.daycount matches 16..30 run tag @s add Iruru.lv4
        execute if score $day iruru.daycount matches 16..30 run scoreboard players set $levels iruru.levels 4

    # $day = 31~40 (SPD-1.75x)(lv5)
        execute as @e[type=#zombie,tag=!Iruru.lv5] if score $day iruru.daycount matches 31..40 run attribute @s generic.movement_speed base set 0.40250000729
        execute as @e[type=#zombie,tag=!Iruru.lv5] if score $day iruru.daycount matches 31..40 run effect give @s jump_boost 999999 2 true
        execute as @e[type=#zombie,tag=!Iruru.lv5] if score $day iruru.daycount matches 31..40 run tag @s add Iruru.lv5
        execute if score $day iruru.daycount matches 31..40 run scoreboard players set $levels iruru.levels 5

    # $day = 41~ (HP-1.5x - ATK-1.5x - SPD-2.0x - Range-2.0x)(lv6)
        execute as @e[type=#zombie,tag=!Iruru.lv6] if score $day iruru.daycount matches 41.. run function status:movement_speed
        execute as @e[type=#zombie,tag=!Iruru.lv6] if score $day iruru.daycount matches 41.. run function status:attack_damage
        execute as @e[type=#zombie,tag=!Iruru.lv6] if score $day iruru.daycount matches 41.. run function status:max_health
        execute as @e[type=#zombie,tag=!Iruru.lv6] if score $day iruru.daycount matches 41.. run function status:follow_range
        execute as @e[type=#zombie,tag=!Iruru.lv6] if score $day iruru.daycount matches 41.. run effect give @s jump_boost 999999 3 true
        execute as @e[type=#zombie,tag=!Iruru.lv6] if score $day iruru.daycount matches 41.. run tag @s add Iruru.lv6
        execute if score $day iruru.daycount matches 41.. run scoreboard players set $levels iruru.levels 6
