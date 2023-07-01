#> sys:install/start_menu
#
# インストールメッセージを表示
#
# @within tag/function sys:core/load

# スタートメニュー
    tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
    tellraw @a {"text": "\"zombie_system\"がロードされました。","color": "green"}
    tellraw @a [{"text": "verβ0.5.1 ","color": "gold"}]
    tellraw @a [{"text": ">> ゲームをスタートする <<","bold": false,"clickEvent": {"action": "run_command","value": "/function cmd:game_start"},"hoverEvent": {"action": "show_text", "contents": "クリックすることでゲームを開始します。\n(/function cmd:game_start でも可能)"}}]
    tellraw @a [{"text": "created by ","color": "blue"},{"text": "iruru1111","color": "aqua","underlined": true,"clickEvent": {"action": "open_url","value":"https://twitter.com/iruru1111"}}]
    tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}

# スタートメニュー2
    #tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
    #tellraw @a {"text": "<ゲームに関する注意事項>","color": "red"}
    #tellraw @a {"text": "ゲームを開始すると時間が0(朝)に設定されます","color": "green"}
    #tellraw @a {"text": "$dayが0日目にリセットされます(開発者用)","color": "green"}
    #tellraw @a {"text": "ゲームを開始するとdoDaylightCycleがtrueに変更されます","color": "green"}
    #tellraw @a {"text": "ゲームを開始するとゲームモードがサバイバルに変更されます","color": "green"}
    #tellraw @a {"text": "ゲームを終了する場合は\"/function cmd:game_end\"と入力してください","color": "green"}
    #tellraw @a {"text": "もしくは生存者数が0人になったときゲームを終了します","color": "green"}
    #tellraw @a {"text": "reloadをするとゲームが停止します！"}
    #tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
    