#> sys:repeat/weather/thundering
#
# 雷雨の時に実行
#
# @within function sys:repeat/

# コマンド
    # 雷雨が降っている時にエフェクトを付与
        execute if predicate sys:is_not_affected_speed as @e[type=#zombie] run effect give @e[type=#zombie] speed 3 0 true
        execute if predicate sys:is_not_affected_jumpboost as @e[type=#zombie] run effect give @e[type=#zombie] jump_boost 3 0 true
        execute if predicate sys:is_not_affected_strength as @e[type=#zombie] run effect give @e[type=#zombie] strength 3 0 true