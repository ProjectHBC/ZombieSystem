#> adv:effect/resistance/lv3
#
# lv3のエフェクトを付与する
#
# @within advancement/resistance/lv3

# エフェクトを付与
    effect give @s minecraft:resistance 1000000 2 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:resistance/lv3
