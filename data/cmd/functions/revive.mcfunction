#> cmd:revive
#
# 復活用のコマンド
#
# @user

# チームを退出
    team leave @s

# ゲームモードをサバイバルに変更
    gamemode survival @s

# サバイバータグを付与
    tag @s add Iruru.survivor

# メッセージ
    tellraw @s {"text": "復活しました！","color": "green"}
