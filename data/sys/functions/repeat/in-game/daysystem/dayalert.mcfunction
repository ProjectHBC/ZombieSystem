#> sys:repeat/in-game/daysystem/dayalert
#
# 指定された日になった時に実行されるアラート
#
# @within function sys:repeat/in-game/daysystem/daycount

# コマンド
    # $day = 1,4,8,11,16,21,26,31,36,41,46,50,51
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
        execute if score $day iruru.daycount matches 46 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $day iruru.daycount matches 50 run tellraw @a [{"text": "ゾンビの様子が変化した…\n","color": "gray"},{"text": "もう","color": "red"},{"text": "逃げ","color": "dark_red"},{"text": "られない…can't ES","color": "red"},{"text": "CAPE…PA","color": "dark_red"},{"text": "NIC…\n","color": "dark_red","bold": true},{"text": "誰も","color": "dark_red"},{"text": "助からない…","color": "red"},{"text": "君が覗き見てたの？\n","color": "dark_red","obfuscated": true},{"text": "CAN'T THINK STRAIGHT CAN'T CALM DOWN","color": "dark_red","bold": true}]
        execute if score $day iruru.daycount matches 51 run tellraw @a [{"text": "ゾンビの様子が変化した…?","color": "gray"}]
