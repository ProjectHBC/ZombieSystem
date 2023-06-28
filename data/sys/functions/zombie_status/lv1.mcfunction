#> sys:zombie_status/lv1
#
# レベル別のステータス設定ファイル
#
# 条件が一致した時のみ実行される
#
# @within function sys:zombie_status/controller

# ステータス変更 (HP-1.0x - ATK-1.0x - SPD-0.5x - Range-1.0x - Jump-lvNone) - lv1
#attribute @s generic.max_health base set 20.0
attribute @s generic.attack_damage base set 3.0
attribute @s generic.movement_speed base set 0.11500000208
attribute @s generic.follow_range base set 35.0
#effect give @s jump_boost 999999 0 true

# タグを付与
tag @s add Iruru.lv1
