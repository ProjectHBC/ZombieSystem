#> cmd:revive
#
# 復活用のコマンド
#
# @user

# サバイバーチームに参加
    team join Iruru.survivor @s
# ゲームモードをサバイバルに変更
    gamemode survival @s
# サバイバータグを付与
    tag @s add Iruru.survivor

# メッセージ
    tellraw @s {"text": "復活しました！","color": "green"}
