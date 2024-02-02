#> sys:event/custom_spawner/break_all_custom_spawner
#
# 全てのカスタムスポナーを破壊します
#
# @user

# カスタムスポナーとしているブロックを破壊
    execute at @e[tag=Iruru.custom_spawner] if block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-143712355,391792719,-1256236997,306758019],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjA4ZGQ2YjBjNzEyZWMxYzE2OGYxZWFjYmJhMmQyODdlZDhlYWU1NTc3NzA5YmU1ZjBmZjUwNDcwMTc1MDg5NCJ9fX0="}]}}} run setblock ~ ~ ~ air
# カスタムスポナーのスコアを削除
    execute at @e[tag=Iruru.custom_spawner] if block ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-143712355,391792719,-1256236997,306758019],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjA4ZGQ2YjBjNzEyZWMxYzE2OGYxZWFjYmJhMmQyODdlZDhlYWU1NTc3NzA5YmU1ZjBmZjUwNDcwMTc1MDg5NCJ9fX0="}]}}} run scoreboard players reset @e[tag=Iruru.custom_spawner] iruru.cs_timer
# アマスタを削除    
    kill @e[tag=Iruru.custom_spawner]
# メッセージ
    tellraw @s {"text": "ロードされている範囲内の全てのカスタムスポナーを破壊しました。","color": "green"}
    