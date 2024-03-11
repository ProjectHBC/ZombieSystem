#> cmd:game/pause
#
# ゲームを一時停止するときに使う、プレイヤー人数が0人のときには常時実行される
#
# @public

# ゲームルール:デイサイクルをオフ
    execute if score $check iruru.check matches 1 run gamerule doDaylightCycle false
# カスタムスポナーの稼働を停止
    execute if score $check iruru.check matches 1 run function sys:event/custom_spawner/mode/off
# ゲームモードをクリエイティブに変更
    execute if score $check iruru.check matches 1 run gamemode creative @a[tag=Iruru.survivor]
    execute if score $check iruru.check matches 1 run gamemode creative @a[team=Iruru.zombieteam]

# メッセージ
    execute if score $check iruru.check matches 1 run tellraw @a {"text": "ゲームを一時停止しました\n再開するまで時間は動きません(その他モブやシステムは動く)","color": "gray"}
    execute if score $check iruru.check matches 1 run tellraw @a [{"text": ">> ゲームを再開する <<","bold": false,"clickEvent": {"action": "run_command","value": "/function cmd:game/play"},"hoverEvent": {"action": "show_text", "contents": "クリックすることでゲームを再開します。\n(/function cmd:game/play でも可能)"}}]
    execute if score $check iruru.check matches 0 run tellraw @a {"text": "ゲームは起動していません","color": "gray"}

# アナウンス
    execute if score $check iruru.check matches 1 run bossbar set iruru:announcement players @a
    # 実行はされてるけど0人に対して実行してる(∴pause中はalwaysにする必要がある)
