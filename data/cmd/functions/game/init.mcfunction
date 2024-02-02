#> cmd:game/init
#
# ゲームの初期化を行います
#
# @public

# 初期化
    # daytime
        scoreboard players set $daytime iruru.daytime 0
    # day
        scoreboard players set $day iruru.daycount 0
    # サバイバー人数
        scoreboard players set $survivor iruru.survivor 0
    # ゾンビレベル
        scoreboard players set $levels iruru.levels 0
    # ゾンビの合計キル数
        scoreboard players set @a iruru.killed_zs 0

# メッセージ
    tellraw @a {"text": "内部管理データのスコアをリセットしました\n※表示はリセットされません！","color": "gray"}
    