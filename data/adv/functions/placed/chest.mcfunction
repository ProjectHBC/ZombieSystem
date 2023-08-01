#> adv:placed/chest
#
# チェストを設置した時に実行される
#
# @within advancement/placed_chest

# コマンド
    execute at @s anchored eyes positioned ^ ^ ^ run function adv:placed/recursive
    #say place

# 進捗をリセット
    advancement revoke @s only adv:placed_chest
