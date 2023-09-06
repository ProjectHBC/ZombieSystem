#> adv:killed_zombie_spawn
#
# ゾンビを殺した際に確率で周りに子ゾンビをスポーンさせる
#
# @within advancement/killed_zombie

# 実績をリセット
    advancement revoke @s only adv:killed_zombie
    
# 乱数生成
    function loot:rng/div_100

# 指定の範囲内の日に確率で子ゾンビをスポーン(確率はデクリメントして定義すること(0~99なため))    
# $day = 21 ~ 23 - 25%で子ゾン1体
    execute if score $check iruru.check matches 1 if score $day iruru.daycount matches 21..23 if score @s iruru.rng matches ..24 run summon zombie ^ ^3 ^5 {IsBaby:1b}

# $day = 24 ~ 27 - 5%で子ゾン1体,3%で子ゾン2体
    execute if score $check iruru.check matches 1 if score $day iruru.daycount matches 24..27 if score @s iruru.rng matches ..4 run summon zombie ^ ^3 ^5 {IsBaby:1b}
    execute if score $check iruru.check matches 1 if score $day iruru.daycount matches 24..27 if score @s iruru.rng matches ..2 run summon zombie ^1 ^3 ^5 {IsBaby:1b}

# $day = 28 ~ 30 - 25%で子ゾン1体,15%で子ゾン2体,8%で子ゾン3体
    execute if score $check iruru.check matches 1 if score $day iruru.daycount matches 28..30 if score @s iruru.rng matches ..24 run summon zombie ^ ^3 ^5 {IsBaby:1b}
    execute if score $check iruru.check matches 1 if score $day iruru.daycount matches 28..30 if score @s iruru.rng matches ..14 run summon zombie ^-1 ^3 ^5 {IsBaby:1b}
    execute if score $check iruru.check matches 1 if score $day iruru.daycount matches 28..30 if score @s iruru.rng matches ..7 run summon zombie ^1 ^3 ^7 {IsBaby:1b}
