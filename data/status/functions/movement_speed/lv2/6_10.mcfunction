#> status:movement_speed/lv2/6_10
#6~8と9~10

execute if score $speed iruru.m_speed matches 6..8 run function status:movement_speed/lv1/6_8
execute if score $speed iruru.m_speed matches 9..10 run function status:movement_speed/lv1/9_10
