#> sys:repeat/killed_zombie_spawn

# ゾンビを殺した際に確率で周りに子ゾンビをスポーンさせる

#実績削除
    advancement revoke @s only adv:killed_zombie
    
    #乱数生成
    summon area_effect_cloud ~ ~ ~ {Tags:["RND"]}
    execute store result score @s iruru.z_rnd run data get entity @e[tag=RND,distance=..0.01,limit=1] UUID[0]
    
    scoreboard players operation @s iruru.z_rnd %= #100 iruru.z_rnd
    
#20~23日
    #25%で子ゾン1
    execute if score $day iruru.daycount matches 20..23 if score @s iruru.z_rnd matches ..15 run summon zombie ^ ^3 ^5 {IsBaby:1b}

#24~27日
    #5%で子ゾン1
    #3%で子ゾン+1
    execute if score $day iruru.daycount matches 24..27 if score @s iruru.z_rnd matches ..5 run summon zombie ^ ^3 ^5 {IsBaby:1b}
    execute if score $day iruru.daycount matches 24..27 if score @s iruru.z_rnd matches ..3 run summon zombie ^1 ^3 ^5 {IsBaby:1b}

#28~30日
    #25%で子ゾン1
    #15%で子ゾン+1
    #8%で子ゾン+1
    execute if score $day iruru.daycount matches 28..30 if score @s iruru.z_rnd matches ..15 run summon zombie ^ ^3 ^5 {IsBaby:1b}
    execute if score $day iruru.daycount matches 28..30 if score @s iruru.z_rnd matches ..10 run summon zombie ^-1 ^3 ^5 {IsBaby:1b}
    execute if score $day iruru.daycount matches 28..30 if score @s iruru.z_rnd matches ..8 run summon zombie ^1 ^3 ^7 {IsBaby:1b}