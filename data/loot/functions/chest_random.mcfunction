#> loot:chest_random
#
# ルートチェストのルートをランダムに設定します
#
# @within function adv:opened/recursive

# 乱数生成
    function loot:rng

# ルートチェスト
    # 装備武器
        execute if score @s iruru.rng matches 0 run execute if data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} run data merge block ~ ~ ~ {LootTable:"loot:equipments",CustomName:'{"text":"chest"}'}
    # 食料
        execute if score @s iruru.rng matches 1 run execute if data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} run data merge block ~ ~ ~ {LootTable:"loot:food",CustomName:'{"text":"chest"}'}
    # 資源類
        execute if score @s iruru.rng matches 2 run execute if data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} run data merge block ~ ~ ~ {LootTable:"loot:resources",CustomName:'{"text":"chest"}'}
    # サポート系
        execute if score @s iruru.rng matches 3 run execute if data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} run data merge block ~ ~ ~ {LootTable:"loot:supporting",CustomName:'{"text":"chest"}'}
