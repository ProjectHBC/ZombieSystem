#> sys:chest/replace_inventory_by_slot
#
# インベントリとチェスト置換用(重そう…二分探索つかうべきなのか？)
#
# よくよく考えたらchestで開く必要ないのでは？設定次第では？
#
# @within function sys:chest/modify

    execute if score #Slot iruru.chest_num matches 0 run loot replace entity @s container.0 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 1 run loot replace entity @s container.1 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 2 run loot replace entity @s container.2 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 3 run loot replace entity @s container.3 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 4 run loot replace entity @s container.4 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 5 run loot replace entity @s container.5 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 6 run loot replace entity @s container.6 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 7 run loot replace entity @s container.7 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 8 run loot replace entity @s container.8 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 9 run loot replace entity @s container.9 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 10 run loot replace entity @s container.10 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 11 run loot replace entity @s container.11 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 12 run loot replace entity @s container.12 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 13 run loot replace entity @s container.13 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 14 run loot replace entity @s container.14 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 15 run loot replace entity @s container.15 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 16 run loot replace entity @s container.16 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 17 run loot replace entity @s container.17 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 18 run loot replace entity @s container.18 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 19 run loot replace entity @s container.19 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 20 run loot replace entity @s container.20 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 21 run loot replace entity @s container.21 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 22 run loot replace entity @s container.22 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 23 run loot replace entity @s container.23 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 24 run loot replace entity @s container.24 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 25 run loot replace entity @s container.25 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 26 run loot replace entity @s container.26 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 27 run loot replace entity @s container.27 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 28 run loot replace entity @s container.28 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 29 run loot replace entity @s container.29 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 30 run loot replace entity @s container.30 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 31 run loot replace entity @s container.31 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 32 run loot replace entity @s container.32 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 33 run loot replace entity @s container.33 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 34 run loot replace entity @s container.34 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 35 run loot replace entity @s container.35 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 100 run loot replace entity @s armor.feet 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 101 run loot replace entity @s armor.legs 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 102 run loot replace entity @s armor.chest 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches 103 run loot replace entity @s armor.head 1 mine 0 1 0 chest
    execute if score #Slot iruru.chest_num matches -106 run loot replace entity @s weapon.offhand 1 mine 0 1 0 chest