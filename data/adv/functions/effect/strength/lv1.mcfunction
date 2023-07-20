#> adv:effect/strength/lv1
#
# lv1のエフェクトを付与する
#
# @within advancement/strength/lv1

# エフェクトを付与
    effect give @s minecraft:strength 1000000 0 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:strength/lv1
