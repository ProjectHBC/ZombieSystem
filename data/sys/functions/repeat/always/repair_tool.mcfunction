#> sys:repeat/always/repair_tool
#
# 修復ツール使用
#
# @within function sys:repeat/always/

#> 修復ツール
# @private
    #declare storage iruru:repair_tool
    #declare score_holder $repair_armor

# リペアツールを1こ消す
    clear @s minecraft:music_disc_wait{iruru:repair_tool} 1

# メインハンドに持っている装備をコピー
    data modify storage iruru:repair_tool repair_armor set from entity @s SelectedItem

# ストレージ保存した装備のダメージ値を一時スコア代入
    execute store result score $repair_armor iruru.temp run data get storage iruru:repair_tool repair_armor.tag.Damage

# スコアを250減算(アーマー値を250回復)
    scoreboard players remove $repair_armor iruru.temp 250

# スコアをストレージに戻す
    execute store result storage iruru:repair_tool repair_armor.tag.Damage int 1 run scoreboard players get $repair_armor iruru.temp

# ストレージからシュルカーボックスに移行
    data modify block 0 1 0 Items[0] set from storage iruru:repair_tool repair_armor

# プレイヤーのメインハンドにある装備を消す
    replaceitem entity @s weapon.mainhand air

# プレイヤーに与える
    loot give @s mine 0 1 0 chest
