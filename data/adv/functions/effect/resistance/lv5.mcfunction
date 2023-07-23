#> adv:effect/health_boost/lv5
#
# lv3のエフェクトを付与する
#
# @within advancement/resistance/lv5

# エフェクトを付与
    effect give @s minecraft:resistance 1000000 4 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:resistance/lv5
