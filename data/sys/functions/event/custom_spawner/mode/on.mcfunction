#> sys:event/custom_spawner/mode/on
#
# カスタムスポナーを稼働再開
#
# @public

# コマンド
    scoreboard players set $check_pause iruru.check 1

# メッセージ
    tellraw @a {"text": "カスタムスポナーの稼働が再開しました","color": "gray"}
    