#> sys:zombie_repeat
# ゾンビ用のリピート - $check = 1 の時のみ常時実行

# loop
    #schedule function sys:load_loop 3s replace

# zombie
        # speed 0.1~2.0 => 1~20
    # $day = 1~5 (めっちゃ歩くの遅い - 0.5x)(lv1)
        #execute as @e[type=#zombie,tag=!Iruru.slowness_zombie] if score $day iruru.daycount matches 1..5 run scoreboard players set $speed iruru.m_speed 5
        execute as @e[type=#zombie,tag=!Iruru.lv1] if score $day iruru.daycount matches 1..5 run attribute @s generic.movement_speed base set 0.11500000208
        execute as @e[type=#zombie,tag=!Iruru.lv1] if score $day iruru.daycount matches 1..5 run tag @s add Iruru.lv1
    
    # $day = 6~10 (普通通り - 1.0x)(lv2)
        #execute as @e[type=#zombie,tag=Iruru.slowness_zombie] if score $day iruru.daycount matches 6..10 run scoreboard players set $speed iruru.m_speed 10
        execute as @e[type=#zombie,tag=!Iruru.lv2] if score $day iruru.daycount matches 6..10 run attribute @s generic.movement_speed base set 0.23000000417
        execute as @e[type=#zombie,tag=!Iruru.lv2] if score $day iruru.daycount matches 6..10 run tag @s add Iruru.lv2
    
    # $day = 11~15 (ちょいはやい - 1.5x)(lv3)
        execute as @e[type=#zombie,tag=!Iruru.lv3] if score $day iruru.daycount matches 11..15 run attribute @s generic.movement_speed base set 0.34500000625
        execute as @e[type=#zombie,tag=!Iruru.lv3] if score $day iruru.daycount matches 11..15 run tag @s add Iruru.lv3

    # $day = 16~20 (けっこうはやい - 1.75x)(lv4)
        execute as @e[type=#zombie,tag=!Iruru.lv4] if score $day iruru.daycount matches 16..20 run attribute @s generic.movement_speed base set 0.40250000729
        execute as @e[type=#zombie,tag=!Iruru.lv4] if score $day iruru.daycount matches 16..20 run tag @s add Iruru.lv4

    # $day = 21~ (結構速いし、強い - HP-1.5x - ATK-1.5x - SPD-2.0x - Range-2.0x)(lv5)
        execute as @e[type=#zombie,tag=!Iruru.lv5] if score $day iruru.daycount matches 21.. run function status:movement_speed
        execute as @e[type=#zombie,tag=!Iruru.lv5] if score $day iruru.daycount matches 21.. run function status:attack_damage
        execute as @e[type=#zombie,tag=!Iruru.lv5] if score $day iruru.daycount matches 21.. run function status:max_health
        execute as @e[type=#zombie,tag=!Iruru.lv5] if score $day iruru.daycount matches 21.. run function status:follow_range
        execute as @e[type=#zombie,tag=!Iruru.lv5] if score $day iruru.daycount matches 21.. run tag @s add Iruru.lv5
    ## @e[type=#zombie,tag=!Iruru.power_zombie,nbt={Attributes:[{Base: 0.23000000417,Name: "minecraft:generic.movement_speed"}]}]
