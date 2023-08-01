#> adv:effect/resistance/lv4
#
# lv3のエフェクトを付与する
#
# @within advancement/resistance/lv4

# エフェクトを付与
    effect give @s minecraft:resistance 1000000 3 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:resistance/lv4
