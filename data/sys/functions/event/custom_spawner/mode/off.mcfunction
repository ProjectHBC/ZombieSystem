#> sys:event/custom_spawner/mode/off
#
# カスタムスポナーを稼働停止
#
# @public

# コマンド
    scoreboard players set $check_pause iruru.check 0

# メッセージ
    tellraw @a {"text": "カスタムスポナーの稼働が停止しました","color": "gray"}
