#> cmd:game_end
#
# ゲームを終了用のコマンド
#
# @public

# 終了を報告
    tellraw @a {"text": "終息...","color": "gray"}

# 設定
    # サバイバータグを剝奪
    tag @a remove Iruru.survivor
    # デバッグモードのプレイヤーを解除 
    team empty Iruru.debugteam
    # $checkを0に設定(停止状態)
    scoreboard players set $check iruru.check 0
