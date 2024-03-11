#> adv:killed_zombie/
#
# ゾンビを倒した時の実行処理
#
# @within advancement/killed_zombie

# 進捗をリセット
    advancement revoke @s only adv:killed_zombie

# ゾンビキル数処理
    execute as @s run scoreboard players add @s iruru.killed_zs 1

# 子ゾンビを確率スポーン
    function adv:killed_zombie/spawn_baby_zombie
