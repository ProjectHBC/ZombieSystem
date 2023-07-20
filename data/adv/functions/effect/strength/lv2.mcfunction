#> adv:effect/strength/lv2
#
# lv2のエフェクトを付与する
#
# @within advancement/strength/lv2

# エフェクトを付与
    effect give @s minecraft:strength 1000000 1 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:strength/lv2
