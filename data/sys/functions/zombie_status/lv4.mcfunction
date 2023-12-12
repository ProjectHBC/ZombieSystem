#> sys:zombie_status/lv4
#
# レベル別のステータス設定ファイル
#
# 条件が一致した時のみ実行される
#
# @within function sys:zombie_status/controller

# ステータス変更 (HP-1.0x - ATK-1.0x - SPD-1.1x - Range-1.5x - Jump-lvNone) - lv4
    #attribute @s generic.max_health base set 20.0
    attribute @s generic.attack_damage base set 3.0
    attribute @s generic.movement_speed base set 0.25300000458
    attribute @s generic.follow_range base set 52.5
    #effect give @s jump_boost 999999 0 true

# zombieteamに参加
    team join Iruru.zombieteam @s

# タグを付与
    tag @s add Iruru.lv4
