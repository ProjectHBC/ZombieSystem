#> adv:effect/speed/lv1
#
# lv1のエフェクトを付与する
#
# @within advancement/speed/lv1

# エフェクトを付与
    effect give @s minecraft:speed 1000000 0 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:speed/lv1
