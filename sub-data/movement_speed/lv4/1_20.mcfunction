#> status:movement_speed/lv4/1_20
#1~10と11~20

execute if score $speed iruru.m_speed matches 1..10 run function status:movement_speed/lv3/1_10
execute if score $speed iruru.m_speed matches 11..20 run function status:movement_speed/lv3/11_20
