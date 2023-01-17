#> status:movement_speed/lv2/1_5
#1~3と4~5

execute if score $speed iruru.m_speed matches 1..3 run function status:movement_speed/lv1/1_3
execute if score $speed iruru.m_speed matches 4..5 run function status:movement_speed/lv1/4_5
