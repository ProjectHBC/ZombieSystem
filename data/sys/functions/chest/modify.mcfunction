#> sys:chest/modify
#
# チェスト置換用
#
# @within function adv:changed/inventory

# チェストをコピー
    data modify storage iruru:chest tag set from entity @s Inventory[{id:"minecraft:chest"}]

# 名前をchestに変更
    #data modify storage iruru:item_chest tag set value {display: {Name:'{"text":"chest"}'}}
    data modify storage iruru:chest tag merge from storage iruru:based_tag_chest

# スロットを保存
    execute store result score #Slot iruru.chest_num run data get storage iruru:chest tag.Slot

# スロットを削除
    #data modify storage iruru:chest tag.Slot set value 0b
    data remove storage iruru:chest tag.Slot

# ストレージからシュルカーボックスに移行
    data modify block 0 1 0 Items[0] set from storage iruru:chest tag

# 手持ちのアイテム置換
    function sys:chest/replace_inventory_by_slot
