#> adv:effect/strength/lv4
#
# lv3のエフェクトを付与する
#
# @within advancement/strength/lv4

# エフェクトを付与
    effect give @s minecraft:strength 1000000 3 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:strength/lv4
