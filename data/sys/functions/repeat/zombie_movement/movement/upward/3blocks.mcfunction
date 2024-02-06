#> sys:repeat/zombie_movement/movement/upward/3blocks
#
# 3ブロック用のモーション代入とブロック設置関数の呼出
#
# @within function sys:repeat/zombie_movement/movement/upward/

# モーションを代入し、ブロック設置関数を呼出
    data modify entity @s Motion set value [0d,0.75d,0d]
    tag @s add Iruru.3blocks
    function sys:repeat/zombie_movement/movement/upward/place_block
    schedule function sys:repeat/zombie_movement/movement/upward/place_block_for3-1 2t append
    schedule function sys:repeat/zombie_movement/movement/upward/place_block_for3-2 4t append
