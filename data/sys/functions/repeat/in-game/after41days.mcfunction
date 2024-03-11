#> sys:repeat/in-game/after41days
#
# 41日目以降のコマンド実行処理
#
# @within function sys:repeat/in-game/

# event
    # modのイベントを指定時間に実行する
        execute if score $day iruru.daycount matches 49 if score $daytime iruru.daytime matches 13001 run function sys:repeat/in-game/enhancedcelestials/49
        execute if score $day iruru.daycount matches 50 if score $daytime iruru.daytime matches 13001 run function sys:repeat/in-game/enhancedcelestials/50

# movement
    # 41日~50日に常時実行
        execute if score $day iruru.daycount matches 41..50 run function sys:repeat/in-game/zombie_movement/

# infection
    # 41日~44日 感染時lv2に移行
        execute if score $day iruru.daycount matches 41..44 as @a[team=Iruru.survivor,nbt={ActiveEffects:[{Id:34b,Amplifier:0b}]}] run effect give @s hordes:infected 500 1
    # 45日~49日 感染時lv2+に移行
        execute if score $day iruru.daycount matches 45..49 as @a[team=Iruru.survivor,nbt={ActiveEffects:[{Id:34b,Amplifier:0b}]}] run effect give @s hordes:infected 350 1
    # 50日 感染時lv3に移行
        execute if score $day iruru.daycount matches 50 as @a[team=Iruru.survivor,nbt={ActiveEffects:[{Id:34b,Amplifier:0b}]}] run effect give @s hordes:infected 500 2

#=# Toward the Last Trial #=#
    # 50日目の夜にブラッドムーンがやって来る(なんか違うので削除)
        #execute if score $day iruru.daycount matches 50 if score $daytime iruru.daytime matches 13001 run tellraw @a [{"text": "紅い月","color": "dark_red","bold": true},{"text": "が来る…\nこの","color": "gray"},{"text": "夜","color": "dark_blue"},{"text": "を凌げるだろうか…", "color": "gray"}]

    # 51日目を迎えた君へ
        execute if score $day iruru.daycount matches 51 if score $daytime iruru.daytime matches 1 run kill @e[type=#zombie]
        execute if score $day iruru.daycount matches 51 if score $daytime iruru.daytime matches 3 run difficulty peaceful
        execute if score $day iruru.daycount matches 51 if score $daytime iruru.daytime matches 3 run weather clear
