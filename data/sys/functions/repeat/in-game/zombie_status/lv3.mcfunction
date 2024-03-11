#> sys:repeat/in-game/zombie_status/lv3
#
# レベル別のステータス設定ファイル
#
# 条件が一致した時のみ実行される
#
# @within function sys:repeat/in-game/zombie_status/controller

# ステータス変更 (HP-1.0x - ATK-1.0x - SPD-1.0x - Range-1.0x - Jump-lvNone) - lv3
    #attribute @s generic.max_health base set 20.0
    attribute @s generic.attack_damage base set 3.0
    attribute @s generic.movement_speed base set 0.23000000417
    attribute @s generic.follow_range base set 35.0
    #effect give @s jump_boost 999999 0 true

# zombieteamに参加
    team join Iruru.zombieteam @s

# タグを付与
    tag @s add Iruru.lv3
