#> adv:effect/resistance/lv1
#
# lv1のエフェクトを付与する
#
# @within advancement/resistance/lv1

# エフェクトを付与
    effect give @s minecraft:resistance 1000000 0 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:resistance/lv1
