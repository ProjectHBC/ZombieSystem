#> cmd:game_pause
#
# ゲームを一時停止するときに使う、プレイヤー人数が0人のときには常時実行される
#
# @public

# cmd
    # ゲームルール:デイサイクルをオフ
        execute if score $check iruru.check matches 1 run gamerule doDaylightCycle false
    # カスタムスポナーの稼働を停止
        execute if score $check iruru.check matches 1 run function sys:event/custom_spawner/mode/off
    # ゾンビ類の移動を低下(実質停止)及び攻撃力を低下させる
        #execute if score $check iruru.check matches 1 run effect give @e[type=#zombie] slowness 1000000 255 true
        #execute if score $check iruru.check matches 1 run effect give @e[type=#zombie] weakness 1000000 255 true
    # ゲームモードをクリエイティブに変更
        execute if score $check iruru.check matches 1 run gamemode creative @a[tag=Iruru.survivor]
        execute if score $check iruru.check matches 1 run gamemode creative @a[team=Iruru.zombieteam]

# メッセージ
    execute if score $check iruru.check matches 1 run tellraw @a {"text": "ゲームを一時停止しました\n再開するまで時間は動きません(その他モブやシステムは動く)","color": "gray"}
    execute if score $check iruru.check matches 1 run tellraw @a [{"text": ">> ゲームを再開する <<","bold": false,"clickEvent": {"action": "run_command","value": "/function cmd:game_play"},"hoverEvent": {"action": "show_text", "contents": "クリックすることでゲームを再開します。\n(/function cmd:game_play でも可能)"}}]
    execute if score $check iruru.check matches 0 run tellraw @a {"text": "ゲームは起動していません","color": "gray"}

# アナウンス
    execute if score $check iruru.check matches 1 run bossbar set iruru:announcement players @a
    # 実行はされてるけど0人に対して実行してる(∴pause中はalwaysにする必要がある)
