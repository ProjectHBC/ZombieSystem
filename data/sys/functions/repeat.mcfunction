#> sys:repeat
#
# 常時実行ファンクション
#

# 死亡したプレイヤーに実行
    # スペクテイターモードに変更
        gamemode spectator @a[scores={iruru.deathcount=1..}]
    # 死亡メッセージを表示
        tellraw @a[scores={iruru.deathcount=1..}] [{"text": "✞復活することができません！✞","color": "red"}]
    # deathcountを0に設定
        scoreboard players set @a[scores={iruru.deathcount=1..}] iruru.deathcount 0

# zombie
    # $day = 1~10
    execute if score $day iruru.daycount matches 1..10 run effect give @e[type=#zombie] minecraft:slowness 3600 0 true

    # $day = 11~20
    execute if score $day iruru.daycount matches 11..20 run effect clear @e[type=#zombie] slowness

    # $day = 21~
    execute if score $day iruru.daycount matches 21.. run effect give @e[type=#zombie] minecraft:speed 3600 0 true
    execute if score $day iruru.daycount matches 21.. run effect give @e[type=#zombie] minecraft:strength 3600 0 true
    execute if score $day iruru.daycount matches 21.. run effect give @e[type=#zombie] minecraft:absorption 2000 2 true
