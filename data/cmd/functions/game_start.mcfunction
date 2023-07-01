#> cmd:game_start
#
# ゲーム開始用のコマンド
#
# @public

# スタートを報告
    tellraw @a {"text": "世界が悪夢に包まれる…","color": "gray"}

# 設定
    # ゲームモードをサバイバルに変更
    gamemode survival @a
    # ゲームルール:デイサイクルをオン
    gamerule doDaylightCycle true
    # 時間を朝に設定
    time set 0
    # $dayを0に設定
    scoreboard players set $day iruru.daycount 0
    # ゾンビの合計キル数を0に設定
    scoreboard players set @a iruru.killed_zs 0
    # $checkを1に設定(起動状態)
    scoreboard players set $check iruru.check 1
    # サバイバーのタグを設定
    tag @a[gamemode=survival,team=!Iruru.debugteam] add Iruru.survivor
    # ゾンビキル数カウントを設定
    scoreboard objectives setdisplay list iruru.killed_zs
    # improvedmobsのdificultyを0に設定
    improvedmobs difficulty set 0
    