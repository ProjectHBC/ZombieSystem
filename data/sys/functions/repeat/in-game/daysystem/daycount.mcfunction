#> sys:repeat/in-game/daysystem/daycount
#
# 日付が変わったタイミングで更新される
#
# @within function sys:repeat/in-game/daysystem/daytime

# day - 日付を記録する
    scoreboard players add $day iruru.daycount 1

# 日付を表示
    title @a actionbar [{"score":{"name":"$day","objective":"iruru.daycount"},"color": "white"},{"text": "日目","color": "white"}]
    execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.25 0.75

# 指定された日になった時にアラートを実行
    function sys:repeat/in-game/daysystem/dayalert
