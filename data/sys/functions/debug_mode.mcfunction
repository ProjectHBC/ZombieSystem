#> sys:debug_mode
# デバッグモード

# チームに追加
team join Iruru.debugteam @s

# メッセージ
tellraw @s {"text": "デバッグモードをオンにしました","color": "gray"}

# スコアボードを表示
scoreboard objectives setdisplay sidebar.team.gray iruru.debug
