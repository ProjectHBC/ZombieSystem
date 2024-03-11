#> sys:install/start_menu
#
# インストールメッセージを表示
#
# @within tag/function sys:core/load

# スタートメニュー
    tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
    tellraw @a {"text": "\"ZombieSystem\"がロードされました。","color": "green"}
    tellraw @a [{"text": "ver1.0 ","color": "gold"}]
    tellraw @a [{"text": ">> ゲームをスタートする <<","bold": false,"clickEvent": {"action": "run_command","value": "/function cmd:game/start"},"hoverEvent": {"action": "show_text", "contents": "クリックすることでゲームを開始します。\n(/function cmd:game/start でも可能)"}}]
    tellraw @a [{"text": "created by ","color": "blue"},{"text": "iruru1111","color": "aqua","underlined": true,"clickEvent": {"action": "open_url","value":"https://twitter.com/iruru1111"}}]
    tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
