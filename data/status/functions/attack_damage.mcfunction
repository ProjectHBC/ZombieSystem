#> status:attack_damage
# ゾンビの攻撃力変更

## 攻撃力を変更する場合は"generic.attack_damage"の一番右の数字を変更してください(バニラでの攻撃力は3)
    execute as @e[type=#zombie] if score $day iruru.daycount matches 21.. run attribute @e[type=#zombie,limit=1,distance=1..20] generic.attack_damage base set 4.5
