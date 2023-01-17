#> status:movement_speed/lv3/1_10
#1~5と6~10

execute if score $speed iruru.m_speed matches 1..5 run function status:movement_speed/lv2/1_5
execute if score $speed iruru.m_speed matches 6..10 run function status:movement_speed/lv2/6_10
