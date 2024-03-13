#> sys:repeat/in-game/zombie_movement/as_zombie
#
# ゾンビが実行
#
# @within function sys:repeat/in-game/zombie_movement/

# ゾンビの位置からサバイバーが16ブロック以内にいる時に実行
    execute as @s at @s if entity @p[tag=Iruru.survivor,distance=..16,gamemode=survival] run function sys:repeat/in-game/zombie_movement/delta_pos_y

# ゾンビの位置からサバイバーが17~32ブロック以内にいる時に実行
    execute as @s[tag=Iruru.standing] at @s rotated ~ 0 anchored eyes if entity @p[tag=Iruru.survivor,distance=17..32,gamemode=survival] unless block ^ ^ ^1 air run function sys:repeat/in-game/zombie_movement/movement/upward/1block

# 落下無効
    execute as @s[nbt={OnGround:0b}] run data modify entity @s FallDistance set value 0

# 動いていないゾンビにタグ付け
    execute as @s[tag=Iruru.standing] run tag @s remove Iruru.standing
    execute as @s[tag=!Iruru.standing,nbt={Motion:[0.0,-0.0784000015258789d,0.0]}] run tag @s add Iruru.standing

# 3段ジャンプ用の関数実行
    execute as @s run function sys:repeat/in-game/zombie_movement/movement/upward/for_3blocks
