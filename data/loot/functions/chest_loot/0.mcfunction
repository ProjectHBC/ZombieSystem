#> loot:chest_loot/0
#
# ルートチェスト化のための設定ファイル
#
# 条件が一致した時のみ実行される
#
# @within function loot:chest_loot/controller

# ルートチェスト
    # 装備武器
        execute if score @s iruru.rng matches 0 run data merge block ~ ~ ~ {LootTable:"loot:equipments",CustomName:'{"text":"chest"}'}
    # 食料
        execute if score @s iruru.rng matches 1 run data merge block ~ ~ ~ {LootTable:"loot:food",CustomName:'{"text":"chest"}'}
    # 資源類
        execute if score @s iruru.rng matches 2 run data merge block ~ ~ ~ {LootTable:"loot:resources",CustomName:'{"text":"chest"}'}
    # サポート系
        execute if score @s iruru.rng matches 3 run data merge block ~ ~ ~ {LootTable:"loot:supporting",CustomName:'{"text":"chest"}'}