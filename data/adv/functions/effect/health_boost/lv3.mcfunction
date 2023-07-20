#> adv:effect/health_boost/lv3
#
# lv3のエフェクトを付与する
#
# @within advancement/health_boost/lv3

# エフェクトを付与
    effect give @s minecraft:health_boost 1000000 2 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:health_boost/lv3
