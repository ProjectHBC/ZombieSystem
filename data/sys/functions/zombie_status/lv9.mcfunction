#> sys:zombie_status/lv9
#
# レベル別のステータス設定ファイル
#
# 条件が一致した時のみ実行される
#
# @within function sys:zombie_status/controller

# ステータス変更 (HP-1.0x - ATK-3.0x - SPD-0.75x - Range-4.0x - Jump-lv2) - lv9
    #attribute @s generic.max_health base set 20.0
    attribute @s generic.attack_damage base set 9.0
    attribute @s generic.movement_speed base set 0.17250000312
    attribute @s generic.follow_range base set 140
    effect give @s jump_boost 999999 1 true

# zombieteamに参加
    team join Iruru.zombieteam @s

# タグを付与
    tag @s add Iruru.lv9
