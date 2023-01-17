#> status:movement_speed/lv0/6

execute if score $speed iruru.m_speed matches 6 run attribute @e[type=#zombie,limit=1,distance=1..20] generic.movement_speed base set 0.1380000025
