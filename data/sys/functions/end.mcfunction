#> sys:end
# ゲームを終了用のコマンド、いるかなこれ？

# 終了を報告
tellraw @a {"text": "終息...","color": "gray"}

# 設定
team empty Iruru.debugteam
scoreboard players set $check iruru.check 0
