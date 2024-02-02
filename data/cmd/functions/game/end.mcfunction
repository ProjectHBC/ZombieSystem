#> cmd:game/end
#
# ゲーム終了用、フェイルセーフ用コマンド
#
# @user

# ゲームが起動していないときのエラー
    execute if score $check iruru.check matches 0 run tellraw @s {"text": "ゲームは起動していません","color": "gray"}

# 本当にゲームを終了していいか確認
    execute if score $check iruru.check matches 1 run tellraw @p [{"text":"警告：ゲームを終了させようとしています。\n現在ゲームが稼働中の場合はリセットされます。\n","color":"red"},{"text":">> ゲームを終了する <<\n","color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"ゲームを終了します","color":"white"}]},"clickEvent":{"action":"run_command","value":"/function sys:fail_safe/game/end"}},{"text":"ゲームを一時停止させる場合は、/function cmd:game/pause を実行してください。","color":"red"}]
    