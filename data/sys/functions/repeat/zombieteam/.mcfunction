#> sys:repeat/zombieteam/
#
# ゾンビサイド用のファイル
#
# @within sys:repeat/

# コマンド
    # エフェクト
    effect give @s minecraft:slowness 2 1 true
    effect give @s parcool:inexhaustible 2 0 true
    effect give @s minecraft:regeneration 2 2 true
    effect give @s minecraft:health_boost 2 4 true
    effect give @s minecraft:saturation 2 0 true

    # 落下軽減
    #execute if entity @s[nbt={OnGround:0b}] at @s unless block ~ ~-3 ~ air run function sys:repeat/zombieteam/fall

    # 臨時:サバイバル-クリエイティブ
    #execute as @a[team=Iruru.zombieteam,nbt={SelectedItem:{id:"minecraft:lime_dye"}}] run gamemode creative
    #execute as @a[team=Iruru.zombieteam,nbt=!{SelectedItem:{id:"minecraft:lime_dye"}}] run gamemode survival
