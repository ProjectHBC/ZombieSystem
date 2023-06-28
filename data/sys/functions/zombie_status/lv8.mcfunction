#> sys:zombie_status/lv8
#
# レベル別のステータス設定ファイル
#
# 条件が一致した時のみ実行される
#
# @within function sys:zombie_status/controller

# ステータス変更 (HP-1.0x - ATK-1.5x - SPD-1.4x - Range-3.0x - Jump-lv1) - lv8
#attribute @s generic.max_health base set 20.0
attribute @s generic.attack_damage base set 4.5
attribute @s generic.movement_speed base set 0.32200000583
attribute @s generic.follow_range base set 105
effect give @s jump_boost 999999 0 true

# タグを付与
tag @s add Iruru.lv8
