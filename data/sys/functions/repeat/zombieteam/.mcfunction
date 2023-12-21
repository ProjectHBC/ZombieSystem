#> sys:repeat/zombieteam/
#
# ゾンビサイド用のファイル
#
# @within sys:repeat/

# コマンド
    # エフェクト
    effect give @s minecraft:slowness 2 1 true
    effect give @s parcool:inexhaustible 2 0 true

    # 落下軽減
    #execute if entity @s[nbt={OnGround:0b}] run function sys:repeat/zombieteam/fall

    # 臨時:サバイバル-クリエイティブ
    #execute as @a[team=Iruru.zombieteam,nbt={SelectedItem:{id:"minecraft:lime_dye"}}] run gamemode creative
    #execute as @a[team=Iruru.zombieteam,nbt=!{SelectedItem:{id:"minecraft:lime_dye"}}] run gamemode survival
