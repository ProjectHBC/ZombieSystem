#> sys:repeat/
#
# 常時実行ファンクション
#
# @within function sys:core/tick

# 死亡したプレイヤーに実行
    function sys:repeat/for_death

# daycount
    execute if score $check iruru.check matches 1 run function sys:repeat/daycount

# dayalert
    execute if score $daytime iruru.daytime matches 1 run function sys:repeat/dayalert

# system_tag
    function sys:repeat/system_tag

# debug_mode
    execute if score $check iruru.check matches 1 run function sys:repeat/debug_mode

# killed_zombie
    function sys:repeat/killed_zombie

# weather
    # 雨が降っている時に実行
        execute if score $check iruru.check matches 1 if predicate sys:is_raining run function sys:repeat/weather/raining
    # 雷雨の時に実行
        execute if score $check iruru.check matches 1 if predicate sys:is_thundering run function sys:repeat/weather/thundering

# in_water
    # 水の中で泳いでいる状態であるときに毒状態にする
        effect give @a[predicate=sys:is_in_water] poison 2 1 true
        #execute as @a at @s if predicate sys:is_in_water run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:19,Amplifier:0b,Duration:2,ShowParticles:1b}]}

# event
    # nothing :p
