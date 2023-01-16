#> sys:repeat
#
# 死亡したプレイヤーをスペクテイターモードに変更
#

# 死亡したプレイヤーに実行
    # スペクテイターモードに変更
        gamemode spectator @a[scores={deathcount=1}]
    # 死亡メッセージを表示
        tellraw @a[scores={deathcount=1}] [{"text": "✞復活することができません！✞","color": "red"}]
    # deathcountを0に設定
        scoreboard players set @a[scores={deathcount=1}] deathcount 0
