#> sys:zombie_repeat
# ゾンビ用のリピート

# loop
    #schedule function sys:load_loop 3s replace

# zombie
        # speed 0.1~2.0 => 1~20
    # $day = 1~10
        #execute as @e[type=#zombie,tag=!Iruru.slowness_zombie] if score $day iruru.daycount matches 1..10 run scoreboard players set $speed iruru.m_speed 5
        execute as @e[type=#zombie,tag=!Iruru.slowness_zombie] if score $day iruru.daycount matches 1..10 run attribute @s generic.movement_speed base set 0.11500000208
        execute as @e[type=#zombie,tag=!Iruru.slowness_zombie] if score $day iruru.daycount matches 1..10 run tag @e[type=#zombie] add Iruru.slowness_zombie
    # $day = 11~20
        #execute as @e[type=#zombie,tag=Iruru.slowness_zombie] if score $day iruru.daycount matches 11..20 run scoreboard players set $speed iruru.m_speed 10
        execute as @e[type=#zombie,tag=!Iruru.slowness_zombie] if score $day iruru.daycount matches 11..20 run attribute @s generic.movement_speed base set 0.23000000417
        execute as @e[type=#zombie,tag=Iruru.slowness_zombie] if score $day iruru.daycount matches 11..20 run tag @s remove Iruru.slowness_zombie
    # $day = 21~
        execute if score $day iruru.daycount matches 21.. run function status:movement_speed
        execute if score $day iruru.daycount matches 21.. run function status:attack_damage
        execute if score $day iruru.daycount matches 21.. run function status:max_health
        execute as @e[type=#zombie,tag=!Iruru.power_zombie] if score $day iruru.daycount matches 21.. run tag @e[type=#zombie] add Iruru.power_zombie
        execute as @e[type=#zombie,tag=Iruru.slowness_zombie] if score $day iruru.daycount matches 21.. run tag @s remove Iruru.slowness_zombie
    ## @e[type=#zombie,tag=!Iruru.power_zombie,nbt={Attributes:[{Base: 0.23000000417,Name: "minecraft:generic.movement_speed"}]}]
