#> sys:repeat/arrow/
#
# 矢がガラスを突き破ったらおもしろくないですか？
#
# @within function sys:repeat/

# 範囲デバッグ用
    execute as @e[type=arrow] at @s run particle minecraft:end_rod ^ ^ ^1 0.00125 0.00125 0.00125 0.001 1
    execute as @e[type=arrow] at @s run particle minecraft:end_rod ^ ^ ^-1 0.00125 0.00125 0.00125 0.001 1
    execute as @e[type=arrow] at @s run particle minecraft:end_rod ^1 ^ ^ 0.00125 0.00125 0.00125 0.001 1
    execute as @e[type=arrow] at @s run particle minecraft:end_rod ^-1 ^ ^ 0.00125 0.00125 0.00125 0.001 1

# 矢が刺さっているブロックがglassであることを検知
    #execute as @e[type=arrow] at @s if data entity @s {inBlockState:{Name:"minecraft:glass"}} run fill ~-0.1 ~-0.1 ~-0.1 ~0.1 ~0.1 ~0.1 air replace glass
    
# ブロック置き換え
    execute as @e[type=arrow] at @s if block ^ ^ ^1 #minecraft:glass run fill ~-0.25 ~-0.25 ~-0.25 ~0.25 ~0.25 ~0.25 air replace #glass
    execute as @e[type=arrow] at @s if block ^ ^ ^-1 #minecraft:glass run fill ~-0.25 ~-0.25 ~-0.25 ~0.25 ~0.25 ~0.25 air replace #glass
    execute as @e[type=arrow] at @s if block ^1 ^ ^ #minecraft:glass run fill ~-0.25 ~-0.25 ~-0.25 ~0.25 ~0.25 ~0.25 air replace #glass
    execute as @e[type=arrow] at @s if block ^-1 ^ ^ #minecraft:glass run fill ~-0.25 ~-0.25 ~-0.25 ~0.25 ~0.25 ~0.25 air replace #glass
