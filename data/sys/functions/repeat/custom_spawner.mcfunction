#> sys:repeat/custom_spawner
#
# カスタムスポナー用の常時実行ファイル
#
# @within function sys:repeat/

# コマンド
    # 指定したアマスタにパーティクル
        execute at @e[tag=Iruru.custom_spawner] run particle minecraft:soul ~ ~1 ~
    # 稼働状態にあるとき、指定したアマスタ位置にあるガラスがあるとき、タイマーが1以上のときにタイマー減少(最小値が0になるように)
        execute if score $check_pause iruru.check matches 1 at @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=1..}] if block ~ ~ ~ minecraft:gray_stained_glass run scoreboard players remove @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=1..},distance=..0.01] iruru.cs_timer 1
    # 指定したアマスタ位置にあるガラスが無くなった時に、アマスタを破壊
        execute at @e[tag=Iruru.custom_spawner] unless block ~ ~ ~ minecraft:gray_stained_glass run scoreboard players reset @e[tag=Iruru.custom_spawner,distance=..0.01] iruru.cs_timer
        execute at @e[tag=Iruru.custom_spawner] unless block ~ ~ ~ minecraft:gray_stained_glass run kill @e[tag=Iruru.custom_spawner,distance=..0.01]
    # タイマーが0になった時にファイルを読み込む
        execute as @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=0}] run function sys:event/custom_spawner/summon_zombie
