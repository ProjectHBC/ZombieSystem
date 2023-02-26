#> sys:start
#ゲーム開始用のコマンド

# スタートを報告
tellraw @a {"text": "世界が悪夢に包まれる…","color": "gray"}

# 設定
gamemode survival @a
gamerule doDaylightCycle true
time set 0
scoreboard players set $day iruru.daycount 0
scoreboard players set $check iruru.check 1