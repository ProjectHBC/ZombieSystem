#> sys:repeat/in-game/zombie_status/lv11
#
# レベル別のステータス設定ファイル
#
# 条件が一致した時のみ実行される
#
# @within function sys:repeat/in-game/zombie_status/controller

# ステータス変更 (HP-1.5x - ATK-4.0x - SPD-1.5x - Range-5.0x - Jump-lv2) - lv11
    attribute @s generic.max_health base set 30.0
    attribute @s generic.attack_damage base set 12.0
    attribute @s generic.movement_speed base set 0.34500000625
    attribute @s generic.follow_range base set 175
    effect give @s jump_boost 999999 1 true

# zombieteamに参加
    team join Iruru.zombieteam @s

# タグを付与
    tag @s add Iruru.lv11
