#> status:movement_speed
## ゾンビの移動速度変更

## 移動速度を変更する場合は"iruru.m_speed"の一番右の数字を変更してください(バニラでの移動速度は10)(範囲は1~20)
    execute as @e[type=#zombie] if score $day iruru.daycount matches 21.. run scoreboard players set $speed iruru.m_speed 15
