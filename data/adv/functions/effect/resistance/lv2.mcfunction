#> adv:effect/resistance/lv2
#
# lv2のエフェクトを付与する
#
# @within advancement/resistance/lv2

# エフェクトを付与
    effect give @s minecraft:resistance 1000000 1 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:resistance/lv2
