#> cmd:game_play
#
# 一時停止したゲームを再開するときに使う
#
# @public

# cmd
    # ゲームルール:デイサイクルをオン
        execute if score $check iruru.check matches 1 run gamerule doDaylightCycle true

# メッセージ
    execute if score $check iruru.check matches 1 run tellraw @a {"text": "ゲームを再開しました","color": "gray"}
    execute if score $check iruru.check matches 0 run tellraw @a {"text": "ゲームは起動していません","color": "gray"}
    