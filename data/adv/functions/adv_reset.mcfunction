#> adv:adv_reset
#
# バグった時とか用の進捗リセット
#
# @public

# 進捗リセット
    advancement revoke @s only adv:changed_inventory
    advancement revoke @s only adv:opened_loot_chest
    advancement revoke @s only adv:placed_chest
    advancement revoke @s only adv:speed/lv1
    advancement revoke @s only adv:speed/lv2
    advancement revoke @s only adv:speed/lv3
    advancement revoke @s only adv:speed/lv4
    advancement revoke @s only adv:speed/lv5
    advancement revoke @s only adv:strength/lv1
    advancement revoke @s only adv:strength/lv2
    advancement revoke @s only adv:strength/lv3
    advancement revoke @s only adv:strength/lv4
    advancement revoke @s only adv:strength/lv5
    advancement revoke @s only adv:health_boost/lv1
    advancement revoke @s only adv:health_boost/lv2
    advancement revoke @s only adv:health_boost/lv3
    advancement revoke @s only adv:health_boost/lv4
    advancement revoke @s only adv:health_boost/lv5
    advancement revoke @s only adv:resistance/lv1
    advancement revoke @s only adv:resistance/lv2
    advancement revoke @s only adv:resistance/lv3
    advancement revoke @s only adv:resistance/lv4
    advancement revoke @s only adv:resistance/lv5
    advancement revoke @s only adv:killed_zombie

# メッセージ
    tellraw @s {"text": "データパックに関連する進捗をリセットしました","color": "gray"}
    