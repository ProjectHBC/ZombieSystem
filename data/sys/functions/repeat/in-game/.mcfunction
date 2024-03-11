#> sys:repeat/in-game/
#
# ゲーム中($check = 1)の時にのみ常時実行
#
# @within function sys:core/tick

# ゾンビのステータス変更
    function sys:repeat/in-game/zombie_status/controller

# 死亡したプレイヤーに実行
    function sys:repeat/in-game/for_death/

# daysystem
    function sys:repeat/in-game/daysystem/daytime

# debug_mode
    function sys:repeat/in-game/debug_mode

# weather
    # 雨が降っている時に実行
        execute if predicate sys:is_raining run function sys:repeat/in-game/weather/raining
    # 雷雨の時に実行
        execute if predicate sys:is_thundering run function sys:repeat/in-game/weather/thundering

# event
    # modのイベントを指定時間に実行する
        # after41days
    # custom_spawner
        function sys:repeat/in-game/custom_spawner

# after41days
    # 41日目以降に常時実行するファイル
        execute if score $day iruru.daycount matches 41.. run function sys:repeat/in-game/after41days
