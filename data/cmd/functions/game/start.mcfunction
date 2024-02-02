#> cmd:game/start
#
# ゲーム開始用、フェイルセーフ用コマンド
#
# @user

# 本当にゲームを開始していいか確認
    tellraw @p [{"text":"警告：ゲームを開始させようとしています。\n現在ゲームが稼働中の場合はリセットされます。\n","color":"red"},{"text":">> ゲームを開始する <<\n","color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"ゲームを開始します","color":"white"}]},"clickEvent":{"action":"run_command","value":"/function sys:fail_safe/game/start"}},{"text":"ゲームを再開させる場合は、/function cmd:game/play を実行してください。","color":"red"}]
    