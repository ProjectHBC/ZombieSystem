#> loot:chest_loot/controller
#
# 日にちごとのルートチェスト化を管理するファイル、ルートチェストのルートをランダムに設定します
#
# @within function adv:opened/recursive

# 乱数生成
    function loot:rng/div_4

# ルートチェスト
    # $day = ~0(=unstarted) - chest
        execute if score $day iruru.daycount matches ..0 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} run function loot:chest_loot/0 
        execute if score $day iruru.daycount matches ..0 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest"}'}

    # $day = 1~5 - chest_1
        execute if score $day iruru.daycount matches 1..5 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_1"}'} run function loot:chest_loot/1
        execute if score $day iruru.daycount matches 1..5 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_1"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest_1"}'}

    # $day = 6~10 - chest_2
        execute if score $day iruru.daycount matches 6..10 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_2"}'} run function loot:chest_loot/2
        execute if score $day iruru.daycount matches 6..10 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_2"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest_2"}'}

    # $day = 11~15 - chest_3
        execute if score $day iruru.daycount matches 11..15 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_3"}'} run function loot:chest_loot/3
        execute if score $day iruru.daycount matches 11..15 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_3"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest_3"}'}

    # $day = 16~20 - chest_4
        execute if score $day iruru.daycount matches 16..20 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_4"}'} run function loot:chest_loot/4
        execute if score $day iruru.daycount matches 16..20 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_4"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest_4"}'}

    # $day = 21~25 - chest_5
        execute if score $day iruru.daycount matches 21..25 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_5"}'} run function loot:chest_loot/5
        execute if score $day iruru.daycount matches 21..25 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_5"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest_5"}'}

    # $day = 26~30 - chest_6
        execute if score $day iruru.daycount matches 26..30 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_6"}'} run function loot:chest_loot/6
        execute if score $day iruru.daycount matches 26..30 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_6"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest_6"}'}

    # $day = 31~35 - chest_7
        execute if score $day iruru.daycount matches 31..35 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_7"}'} run function loot:chest_loot/7
        execute if score $day iruru.daycount matches 31..35 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_7"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest_7"}'}

    # $day = 36~30 - chest_8
        execute if score $day iruru.daycount matches 36..40 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_8"}'} run function loot:chest_loot/8
        execute if score $day iruru.daycount matches 36..40 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_8"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest_8"}'}

    # $day = 41~45 - chest_9
        execute if score $day iruru.daycount matches 41..45 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_9"}'} run function loot:chest_loot/9
        execute if score $day iruru.daycount matches 41..45 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_9"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest_9"}'}

    # $day = 46~50 - chest_10
        execute if score $day iruru.daycount matches 46..50 if data block ~ ~ ~ {Items:[],id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_10"}'} run function loot:chest_loot/10
        execute if score $day iruru.daycount matches 46..50 unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {id:"minecraft:chest"} unless data block ~ ~ ~ {CustomName:'{"text":"chest"}'} unless data block ~ ~ ~ {CustomName:'{"text":"chest_10"}'} run data merge block ~ ~ ~ {CustomName:'{"text":"chest_10"}'}
