#> sys:event/custom_spawner/set
#
# カスタムスポナーを設置するコマンド
#
# @public

# ブロック設置
    setblock ~ ~ ~ minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-143712355,391792719,-1256236997,306758019],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjA4ZGQ2YjBjNzEyZWMxYzE2OGYxZWFjYmJhMmQyODdlZDhlYWU1NTc3NzA5YmU1ZjBmZjUwNDcwMTc1MDg5NCJ9fX0="}]}}}
# アマスタ設置
    summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["Iruru.custom_spawner"],Marker:1b}
# カスタムスポナー用のタイマーが0の時のバグ回避 - 自動的に400tick(20sec)になるように設定
    execute if score $cs_timer iruru.cs_timer matches 0 run scoreboard players set $cs_timer iruru.cs_timer 400
# カスタムスポナー用のタイマーの設定
    scoreboard players operation @e[tag=Iruru.custom_spawner,distance=..1] iruru.cs_timer = $cs_timer iruru.cs_timer
# 指定座標に置かれてるかの管理
    #execute if data storage iruru:cs_storage {"self":false} run data modify storage iruru:cs_storage set_check append value "placed"
# メッセージ
    execute if data storage iruru:cs_storage {"self":true} run tellraw @a {"text": "カスタムスポナーを設置しました。","color": "gray"}
