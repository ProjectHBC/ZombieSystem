#> cmd:debug_mode
#
# デバッグモード
#
# @public

# チームに追加
    team join Iruru.debugteam @s

# メッセージ
    tellraw @s {"text": "デバッグモードをオンにしました","color": "gray"}

# スコアボードを再表示
    scoreboard objectives setdisplay sidebar.team.gray iruru.debug
