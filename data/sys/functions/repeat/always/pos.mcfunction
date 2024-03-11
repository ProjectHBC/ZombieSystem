#> sys:repeat/always/pos
#
# 座標(Pos)の取得や代入
#
# @within function sys:repeat/always/system_tag

#> Posを一時保存するためのストレージ
# @private
    #declare storage iruru:pos

# Posをストレージに保存する
    data modify storage iruru:pos Pos set from entity @s Pos

# ストレージ保存したPosをぞれぞれXYZのスコアに代入する
    execute store result score @s iruru.pos_x run data get storage iruru:pos Pos.[0]
    execute store result score @s iruru.pos_y run data get storage iruru:pos Pos.[1]
    execute store result score @s iruru.pos_z run data get storage iruru:pos Pos.[2]
