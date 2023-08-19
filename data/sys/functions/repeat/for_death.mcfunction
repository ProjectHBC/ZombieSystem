#> sys:repeat/for_death
#
# 死亡したプレイヤーに実行
#
# @within function sys:repeat/

#> 死亡回数
# @private
    #declare objective iruru.deathcount

# コマンド
    # スペクテイターモードに変更
        execute if score $check iruru.check matches 1 run gamemode spectator @a[scores={iruru.deathcount=1..}]
    # タグを剝奪
        tag @a[scores={iruru.deathcount=1..}] remove Iruru.survivor
    # デバッグモードに設定
        execute as @a[scores={iruru.deathcount=1..}] run function cmd:debug_mode

# メッセージ
    # 死亡メッセージを表示
        tellraw @a[scores={iruru.deathcount=1..}] [{"text": "✞復活することができません！✞","color": "red"}]

# リセット
    # deathcountを0に設定
        scoreboard players set @a[scores={iruru.deathcount=1..}] iruru.deathcount 0
