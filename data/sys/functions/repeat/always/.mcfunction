#> sys:repeat/always/
#
# 無条件常時実行
#
# @within function sys:core/tick

# system_tag
    function sys:repeat/always/system_tag

# pos
    # サバイバー
        execute as @e[tag=Iruru.survivor] run function sys:repeat/always/pos
    # ゾンビ
        execute as @e[type=#zombie] run function sys:repeat/always/pos

# zombieteam
    execute as @a[team=Iruru.zombieteam] run function sys:repeat/always/zombieteam/

# 水の中で泳いでいる状態であるときに毒状態にする
        effect give @a[predicate=sys:is_in_water,tag=Iruru.survivor] poison 2 1 true

# "Movement God"を装備しているときに強走状態にする
        effect give @a[predicate=sys:is_armored_movement_god_boots] parcool:inexhaustible 2 0 true
