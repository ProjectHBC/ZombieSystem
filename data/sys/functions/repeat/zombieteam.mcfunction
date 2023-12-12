#> sys:repeat/zombieteam
#
# ゾンビサイド用のファイル
#
# @within sys:repeat/

# コマンド
    # エフェクト
    effect give @a[team=Iruru.zombieteam] minecraft:slowness 2 1 true
    effect give @a[team=Iruru.zombieteam] parcool:inexhaustible 2 0 true

    # 臨時:サバイバル-クリエイティブ
    #execute as @a[team=Iruru.zombieteam,nbt={SelectedItem:{id:"minecraft:lime_dye"}}] run gamemode creative
    #execute as @a[team=Iruru.zombieteam,nbt=!{SelectedItem:{id:"minecraft:lime_dye"}}] run gamemode survival
