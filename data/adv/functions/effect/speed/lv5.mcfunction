#> adv:effect/speed/lv5
#
# lv3のエフェクトを付与する
#
# @within advancement/speed/lv5

# エフェクトを付与
    effect give @s minecraft:speed 1000000 4 true

# メッセージ
    #Nothing

# 進捗をリセット
    advancement revoke @s only adv:speed/lv5
