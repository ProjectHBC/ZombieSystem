#> sys:start_menu
#
# インストールメッセージを表示
#

# スタートメニュー
    tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
    tellraw @a {"text": "\"Zombie\"がロードされました。","color": "green"}
    tellraw @a [{"text": "verβ0.1 ","color": "gold"},{"text": "","bold": false,"clickEvent": {"action": "run_command","value": "/<command>"},"hoverEvent": {"action": "show_text", "contents": "<message>"}}]
    tellraw @a {"text": ""}
    tellraw @a [{"text": "created by ","color": "blue"},{"text": "iruru1111","color": "aqua","underlined": true,"clickEvent": {"action": "open_url","value":"https://twitter.com/iruru1111"}}]
    tellraw @a {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
