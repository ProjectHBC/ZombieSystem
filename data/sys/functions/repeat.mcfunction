#> sys:repeat
#
# 死亡したプレイヤーをスペクテイターモードに変更
#

# 死亡したプレイヤーに実行
    # スペクテイターモードに変更
        gamemode spectator @a[scores={iruru.deathcount=1}]
    # 死亡メッセージを表示
        tellraw @a[scores={iruru.deathcount=1}] [{"text": "✞復活することができません！✞","color": "red"}]
    # deathcountを0に設定
        scoreboard players set @a[scores={iruru.deathcount=1}] deathcount 0

# zombie
    # speed_check(under) , ..0
        execute if score $speed iruru.m_speed matches ..0 run scoreboard players set $speed iruru.m_speed 1
        execute if score $speed iruru.m_speed matches ..0 run tellraw @a {"text": "$speedの範囲は1~20です","color": "red"}
    # speed_check(over) , 21..
        execute if score $speed iruru.m_speed matches 21.. run scoreboard players set $speed iruru.m_speed 1
        execute if score $speed iruru.m_speed matches 21.. run tellraw @a {"text": "$speedの範囲は1~20です","color": "red"}
