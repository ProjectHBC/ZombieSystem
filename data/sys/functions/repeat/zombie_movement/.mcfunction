#> sys:repeat/zombie_movement/
#
# ゾンビの行動ルールを変える、41~50日のみ有効
#
# @within function sys:repeat/

# ゾンビの位置からサバイバーが16ブロック以内にいる時に実行
    execute as @e[type=#zombie] at @s if entity @a[team=Iruru.survivor,distance=..16,sort=nearest,gamemode=survival] run function sys:repeat/zombie_movement/delta_pos_y

# ゾンビの位置からサバイバーが17~32ブロック以内にいる時に実行
    execute as @e[type=#zombie,tag=Iruru.standing] at @s rotated ~ 0 anchored eyes if entity @a[team=Iruru.survivor,distance=17..32,sort=nearest,gamemode=survival] unless block ^ ^ ^1 air run function sys:repeat/zombie_movement/movement/upward/1block

# 落下無効
    execute as @e[type=#zombie,nbt={OnGround:0b}] run data modify entity @s FallDistance set value 0

# 動いていないゾンビにタグ付け
    tag @e[tag=Iruru.standing] remove Iruru.standing
    tag @e[tag=!Iruru.standing,type=#zombie,nbt={Motion:[0.0,-0.0784000015258789d,0.0]}] add Iruru.standing

# ゾンビの設置したブロックの処理
    execute as @e[tag=Iruru.zombie_block] run function sys:repeat/zombie_movement/zombie_block/

# 3段ジャンプ用の関数実行
    execute as @e[type=#zombie] run function sys:repeat/zombie_movement/movement/upward/for_3blocks
