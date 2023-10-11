#> sys:repeat/daycount
#
# 日付を数える他
#
# @within function sys:repeat/

# コマンド
    # daytime
        execute store result score $daytime iruru.daytime run time query daytime
    # day
        execute if score $daytime iruru.daytime matches 1 run scoreboard players add $day iruru.daycount 1
    # 日付を表示
        execute if score $daytime iruru.daytime matches 1 run title @a actionbar [{"score":{"name":"$day","objective":"iruru.daycount"},"color": "white"},{"text": "日目","color": "white"}]
        execute if score $daytime iruru.daytime matches 1 at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.25 0.75
    # 昼間だけ時間を2x(2日以降) - 不要になったため削除
        #execute if score $day iruru.daycount matches 2.. if score $daytime iruru.daytime matches 1..12500 run time add 1t
        