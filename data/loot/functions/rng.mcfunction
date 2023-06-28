#> loot:rng
#
# 乱数を生成します
#
# @within function loot:**

# AECを召喚
    summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["RNG"]}

# 召喚したAECのUUIDを取得
    execute store result score @s iruru.rng run data get entity @e[tag=RNG,distance=..0.01,limit=1] UUID[0]

# 取得したUUIDを4で割った時の余りを取得
    scoreboard players operation @s iruru.rng %= #4 iruru.rng
