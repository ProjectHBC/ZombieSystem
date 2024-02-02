#> sys:repeat/custom_spawner
#
# カスタムスポナー用の常時実行ファイル
#
# @within function sys:repeat/

# 指定したアマスタにパーティクル
    execute at @e[tag=Iruru.custom_spawner] run particle minecraft:soul ~ ~1 ~
# 稼働状態にあるとき、指定したアマスタ位置に特定のブロックがあるとき、タイマーが1以上のときにタイマー減少(最小値が0になるように)
    execute if score $check_pause iruru.check matches 1 at @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=1..}] if block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-143712355,391792719,-1256236997,306758019],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjA4ZGQ2YjBjNzEyZWMxYzE2OGYxZWFjYmJhMmQyODdlZDhlYWU1NTc3NzA5YmU1ZjBmZjUwNDcwMTc1MDg5NCJ9fX0="}]}}} run scoreboard players remove @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=1..},distance=..0.01] iruru.cs_timer 1
# 指定したアマスタ位置にあるガラスが無くなった時に、アマスタを破壊
    execute at @e[tag=Iruru.custom_spawner] unless block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-143712355,391792719,-1256236997,306758019],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjA4ZGQ2YjBjNzEyZWMxYzE2OGYxZWFjYmJhMmQyODdlZDhlYWU1NTc3NzA5YmU1ZjBmZjUwNDcwMTc1MDg5NCJ9fX0="}]}}} run scoreboard players reset @e[tag=Iruru.custom_spawner,distance=..0.01] iruru.cs_timer
    execute at @e[tag=Iruru.custom_spawner] unless block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-143712355,391792719,-1256236997,306758019],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjA4ZGQ2YjBjNzEyZWMxYzE2OGYxZWFjYmJhMmQyODdlZDhlYWU1NTc3NzA5YmU1ZjBmZjUwNDcwMTc1MDg5NCJ9fX0="}]}}} run kill @e[tag=Iruru.custom_spawner,distance=..0.01]
# タイマーが0になった時にファイルを読み込む
    execute as @e[tag=Iruru.custom_spawner,scores={iruru.cs_timer=0}] run function sys:event/custom_spawner/summon_zombie

# カスタムスポナー集計用
    execute store result score $cs_count iruru.cs_timer if entity @e[tag=Iruru.custom_spawner]
    