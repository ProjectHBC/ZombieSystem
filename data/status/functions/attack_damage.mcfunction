#> status:attack_damage
# ゾンビの攻撃力変更

## 攻撃力を変更する場合は"generic.attack_damage"の一番右の数字を変更してください(バニラでの攻撃力は3)
    execute as @e[type=#zombie,tag=!Iruru.power_zombie] if score $day iruru.daycount matches 21.. run attribute @s generic.attack_damage base set 4.5
