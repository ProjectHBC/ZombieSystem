#> adv:effect/speed/lv2
#
# lv2のエフェクトを付与する
#
# @within advancement/speed/lv2

# エフェクトを付与
    effect give @s minecraft:speed 1000000 1 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:speed/lv2
