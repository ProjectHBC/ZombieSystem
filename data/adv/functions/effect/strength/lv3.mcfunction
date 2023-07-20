#> adv:effect/strength/lv3
#
# lv3のエフェクトを付与する
#
# @within advancement/strength/lv3

# エフェクトを付与
    effect give @s minecraft:strength 1000000 2 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:strength/lv3
