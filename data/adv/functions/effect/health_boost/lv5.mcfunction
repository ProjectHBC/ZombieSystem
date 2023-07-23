#> adv:effect/health_boost/lv5
#
# lv3のエフェクトを付与する
#
# @within advancement/health_boost/lv5

# エフェクトを付与
    effect give @s minecraft:health_boost 1000000 4 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:health_boost/lv5
