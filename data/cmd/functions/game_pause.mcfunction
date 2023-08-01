#> cmd:game_pause
#
# ゲームを一時停止するときに使う、プレイヤー人数が0人のときには常時実行される
#
# @public

# cmd
    # ゲームルール:デイサイクルをオフ
        execute if score $check iruru.check matches 1 run gamerule doDaylightCycle false

# メッセージ
    execute if score $check iruru.check matches 1 run tellraw @a {"text": "ゲームを一時停止しました\n再開するまで時間は進みません(その他モブやシステムは動く)","color": "gray"}
    execute if score $check iruru.check matches 0 run tellraw @a {"text": "ゲームは起動していません","color": "gray"}
    