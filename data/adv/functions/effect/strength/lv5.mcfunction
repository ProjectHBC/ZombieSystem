#> adv:effect/strength/lv5
#
# lv3のエフェクトを付与する
#
# @within advancement/strength/lv5

# エフェクトを付与
    effect give @s minecraft:strength 1000000 4 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:strength/lv5
