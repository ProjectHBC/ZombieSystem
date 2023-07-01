#> adv:opened_loot_chest
#
# チェストを開いた時に実行
#
# @within advancement/opened_loot_chest

# 再帰function
    execute at @s anchored eyes positioned ^ ^ ^ run function adv:opened/recursive
    #say open

# 進捗をリセット
    advancement revoke @s only adv:opened_loot_chest
