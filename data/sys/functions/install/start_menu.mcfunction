#> sys:install/start_menu
#
# インストールメッセージを表示
#
# @within tag/function sys:core/load

# スタートメニュー
    tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
    tellraw @a {"text": "\"zombie_system\"がロードされました。","color": "green"}
    tellraw @a [{"text": "verβ0.9 ","color": "gold"}]
    tellraw @a [{"text": ">> ゲームをスタートする <<","bold": false,"clickEvent": {"action": "run_command","value": "/function cmd:game/start"},"hoverEvent": {"action": "show_text", "contents": "クリックすることでゲームを開始します。\n(/function cmd:game/start でも可能)"}}]
    tellraw @a [{"text": "created by ","color": "blue"},{"text": "iruru1111","color": "aqua","underlined": true,"clickEvent": {"action": "open_url","value":"https://twitter.com/iruru1111"}}]
    tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
    execute if score $check_pause iruru.check matches 0 run tellraw @a [{"text": ">> ゲームを再開する <<","bold": false,"clickEvent": {"action": "run_command","value": "/function cmd:game/play"},"hoverEvent": {"action": "show_text", "contents": "クリックすることでゲームを再開します。\n(/function cmd:game/play でも可能)"}}]
    execute if score $check_pause iruru.check matches 0 run tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
