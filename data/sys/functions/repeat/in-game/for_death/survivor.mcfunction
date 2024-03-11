#> sys:repeat/in-game/for_death/survivor
#
# 死亡したサバイバーのプレイヤーに実行 - プレイヤーをスペクテイターモードにするなどの設定
#
# @within function sys:repeat/in-game/for_death/

# コマンド
    # スペクテイターモードに変更
        gamemode spectator @s
    # タグを剝奪
        tag @s remove Iruru.survivor
    # デバッグモードに設定
        execute as @s run function cmd:debug_mode

# メッセージ
    # 死亡メッセージを表示
        tellraw @s [{"text": "✞復活することができません！✞","color": "red"}]

# リセット
    scoreboard players set @s iruru.deathcount 0
        