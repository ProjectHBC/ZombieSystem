#> adv:effect/speed/lv4
#
# lv3のエフェクトを付与する
#
# @within advancement/speed/lv4

# エフェクトを付与
    effect give @s minecraft:speed 1000000 3 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:speed/lv4
