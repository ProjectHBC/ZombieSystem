#> sys:install/start_menu
#
# インストールメッセージを表示
#

# スタートメニュー
    tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
    tellraw @a {"text": "\"Zombie\"がロードされました。","color": "green"}
    tellraw @a [{"text": "verβ0.2 ","color": "gold"},{"text": "","bold": false,"clickEvent": {"action": "run_command","value": "/help"},"hoverEvent": {"action": "show_text", "contents": "<message>"}}]
    tellraw @a {"text": ""}
    tellraw @a [{"text": "created by ","color": "blue"},{"text": "iruru1111","color": "aqua","underlined": true,"clickEvent": {"action": "open_url","value":"https://twitter.com/iruru1111"}}]
    tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}