#> sys:event/controller
#
# イベントのシステム、常時実行
#

# 乱数生成 (警告：無理やり持ってきてるから気を付けて)
    #execute if score $daytime iruru.daytime matches 1 if score $day iruru.daycount matches 16 run function loot:rng 

# イベントスケジュール
    # day = 16 (kari)
        #execute if score $daytime iruru.daytime matches 1 if score $day iruru.daycount matches 16 if score @s iruru.rng matches 0..1 run function sys:event/giant_zombie
        #execute if score $daytime iruru.daytime matches 1 if score $day iruru.daycount matches 16 if score @s iruru.rng matches 2..3 run function sys:event/vending_machine

