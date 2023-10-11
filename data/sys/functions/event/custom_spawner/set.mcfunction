#> sys:event/custom_spawner/set
#
# カスタムスポナーを設置するコマンド
#

# コマンド
    # ブロック設置
        setblock ~ ~ ~ gray_stained_glass
    # アマスタ設置
        summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["Iruru.custom_spawner"]}
    # カスタムスポナー用のタイマーの設定
        scoreboard players operation @e[tag=Iruru.custom_spawner,distance=..1] iruru.cs_timer = $cs_timer iruru.cs_timer

# メッセージ
    tellraw @a {"text": "カスタムスポナーを設置しました。","color": "gray"}
