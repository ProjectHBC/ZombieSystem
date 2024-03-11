#> sys:repeat/in-game/daysystem/daytime
#
# 時間に関することを処理
#
# @within function sys:repeat/in-game/

# daytime - 現在時刻を取得して記録する
    execute store result score $daytime iruru.daytime run time query daytime

# daytimeが1の時(日付が変わった時)に実行
    execute if score $daytime iruru.daytime matches 1 run function sys:repeat/in-game/daysystem/daycount
