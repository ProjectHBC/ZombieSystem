#> sys:fail_safe/game/end
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
    # $dayを51日に設定 - speed = 0 (停止状態だと無効)
    #scoreboard players set $day iruru.daycount 51
    # $checkを0に設定(停止状態)
    scoreboard players set $check iruru.check 0
    bossbar set iruru:announcement players
