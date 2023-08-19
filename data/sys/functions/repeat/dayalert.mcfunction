#> sys:repeat/dayalert
#
# 指定された日になった時に実行されるアラート
#
# @within function sys:repeat/

# コマンド
    # $day = 1,4,8,11,16,21,26,31,36,41,51
        execute if score $day iruru.daycount matches 1 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 4 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 8 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 11 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 16 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 21 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 26 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 31 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 36 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 41 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 51 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
