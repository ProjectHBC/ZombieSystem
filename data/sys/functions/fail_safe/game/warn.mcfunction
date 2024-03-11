#> sys:fail_safe/game/warn
#
# 終了したデータを呼び起こす用の緊急用コマンド
#
# @user

# スタートを報告
    tellraw @a [{"text": "終了したデータを呼び起こしました。\n","color": "gray"},{"text": "予期せぬバグが発生する場合があります。","color": "dark_red"}]

# 設定
    # ゲームモードをサバイバルに変更
        gamemode survival @a
    # ゲームルール:デイサイクルをオン
        gamerule doDaylightCycle true
    # 日付を戻す
        scoreboard players remove $day iruru.daycount 1
    # 時間を朝に設定
        time set 0
    # $checkを1に設定(起動状態)
        scoreboard players set $check iruru.check 1
    # サバイバーのタグを設定
        tag @a[gamemode=survival,team=!Iruru.debugteam,team=!Iruru.zombieteam] add Iruru.survivor
    # ゾンビキル数カウントを設定
        scoreboard objectives setdisplay list iruru.killed_zs
    