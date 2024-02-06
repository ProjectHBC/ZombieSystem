#> sys:repeat/zombie_movement/movement/upward/1block
#
# 1ブロック用のモーション代入とブロック設置関数の呼出
#
# @within function sys:repeat/zombie_movement/movement/upward/

# モーションを代入し、ブロック設置関数を呼出
    data modify entity @s Motion set value [0d,0.425d,0d]
    function sys:repeat/zombie_movement/movement/upward/place_block
