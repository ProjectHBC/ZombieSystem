#> sys:repeat/in-game/zombie_movement/movement/upward/3blocks
#
# 3ブロック用のモーション代入とブロック設置関数の呼出
#
# @within function sys:repeat/in-game/zombie_movement/movement/upward/

# モーションを代入し、ブロック設置関数を呼出
    data modify entity @s Motion set value [0d,0.75d,0d]
    function sys:repeat/in-game/zombie_movement/movement/upward/place_block
    scoreboard players set @s iruru.3blocks 6
