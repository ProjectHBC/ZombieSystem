#> sys:repeat/always/zombieteam/
#
# ゾンビチーム用のファイル
#
# @within sys:repeat/always/

# コマンド
    effect give @s minecraft:saturation 2 0 true
    execute as @a[team=Iruru.zombieteam,nbt={SelectedItem:{id:"minecraft:lime_dye"}}] run function sys:repeat/always/zombieteam/effect

# 落下軽減
    #execute if entity @s[nbt={OnGround:0b}] at @s unless block ~ ~-3 ~ air run function sys:repeat/zombieteam/fall
