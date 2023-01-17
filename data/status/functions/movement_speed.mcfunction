#> status:movement_speed
## ゾンビの移動速度変更

## 移動速度を変更する場合は"generic.movement_speed"の一番右の数字を変更してください(バニラでの移動速度は0.23000000417)
    execute as @e[type=#zombie,tag=!Iruru.power_zombie] if score $day iruru.daycount matches 21.. run attribute @s generic.movement_speed base set 0.34500000625


### 以下は使用しないでください
    ## 移動速度を変更する場合は"iruru.m_speed"の一番右の数字を変更してください(バニラでの移動速度は10)(範囲は1~20)
    #execute as @e[type=#zombie,tag=!Iruru.power_zombie] if score $day iruru.daycount matches 21.. run scoreboard players set $speed iruru.m_speed 15
