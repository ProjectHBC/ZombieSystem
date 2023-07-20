#> adv:effect/health_boost/lv2
#
# lv2のエフェクトを付与する
#
# @within advancement/health_boost/lv2

# エフェクトを付与
    effect give @s minecraft:health_boost 1000000 1 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:health_boost/lv2
