#> sys:repeat/in-game/weather/raining
#
# 雨が降っている時に実行
#
# @within function sys:repeat/in-game/

# 雨が降っている時にエフェクトを付与
    execute if predicate sys:is_not_affected_speed as @e[type=#zombie] run effect give @s speed 3 0 true
    execute if predicate sys:is_not_affected_jumpboost as @e[type=#zombie] run effect give @s jump_boost 3 0 true
        