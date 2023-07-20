#> adv:effect/speed/lv3
#
# lv3のエフェクトを付与する
#
# @within advancement/speed/lv3

# エフェクトを付与
    effect give @s minecraft:speed 1000000 2 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:speed/lv3
