#> sys:zombie_status/lv12
#
# レベル別のステータス設定ファイル
#
# 条件が一致した時のみ実行される
#
# @within function sys:zombie_status/controller

# ステータス変更 (HP-1.0x - ATK-3.0x - SPD-2.0x - Range-5.0x - Jump-lv2) - lv12
    #attribute @s generic.max_health base set 20.0
    attribute @s generic.attack_damage base set 9.0
    attribute @s generic.movement_speed base set 0.46000000834
    attribute @s generic.follow_range base set 175
    effect give @s jump_boost 999999 1 true

# zombieteamに参加
    team join Iruru.zombieteam @s

# タグを付与
    tag @s add Iruru.lv12
