#> status:max_health
# ゾンビの最大体力を変更

## 最大体力を変更する場合は"generic.max_health"の一番右の数字を変更してください(バニラでの最大体力は20.0)
    execute as @e[type=#zombie,tag=!Iruru.power_zombie] if score $day iruru.daycount matches 21.. run attribute @s generic.max_health base set 30.0
