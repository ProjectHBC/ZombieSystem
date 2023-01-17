#> sys:load_loop
# 1sごとにループ

# loop
    schedule function sys:load_loop 3s replace

# zombie
        # speed 0.1~2.0 => 1~20
    # $day = 1~10
        execute as @e[type=#zombie] if score $day iruru.daycount matches 1..10 run scoreboard players set $speed iruru.m_speed 5
    # $day = 11~20
        execute as @e[type=#zombie] if score $day iruru.daycount matches 11..20 run scoreboard players set $speed iruru.m_speed 10
    # $day = 21~
        execute as @e[type=#zombie] if score $day iruru.daycount matches 21.. run function status:movement_speed
        execute as @e[type=#zombie] if score $day iruru.daycount matches 21.. run function status:attack_damage
        execute as @e[type=#zombie] if score $day iruru.daycount matches 21.. run function status:max_health
