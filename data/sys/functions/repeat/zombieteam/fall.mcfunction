#> sys:repeat/zombieteam/fall
#
# ゾンビサイドのプレイヤーに落下耐性をつける
#
# @within function sys:repeat/zombieteam/

# コマンド
    execute as @s at @s unless block ~ ~-3 ~ air run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:28,Amplifier:0b,Duration:2,ShowParticles:0b,ShowIcon:0b}]}
