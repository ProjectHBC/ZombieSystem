#> sys:repeat
#
# 常時実行ファンクション
#
# @within function sys:core/tick

#> 死んだプレイヤーに付けられるタグ(未使用)
# @private
    #declare tag Iruru.deathplayer

# 死亡したプレイヤーに実行
    # スペクテイターモードに変更
        execute if score $check iruru.check matches 1 run gamemode spectator @a[scores={iruru.deathcount=1..}]
    # タグを剝奪
        tag @a[scores={iruru.deathcount=1..}] remove Iruru.survivor
    # 死亡メッセージを表示
        tellraw @a[scores={iruru.deathcount=1..}] [{"text": "✞復活することができません！✞","color": "red"}]
    # deathplayerタグを設定 - 意味ないので回避
        #tag @a[scores={iruru.deathcount=1..}] add Iruru.deathplayer
        #tellraw @a[scores={iruru.deathcount=1..},tag=Iruru.deathplayer] {"text": "\"Iruru.deathplayer\"タグを付与しました","color": "gray"}
        #tellraw @a[scores={iruru.deathcount=1..},tag=Iruru.deathplayer] [{"text": "\"/function sys:debug_mode\"","clickEvent": {"action": "run_command","value": "/function sys:debug_mode"},"hoverEvent": {"action": "show_text","contents": "自身をデバッグチームに参加"}},{"text": "でデバッグモードをオンにします(クリックで実行)"}]
        #tellraw @a[scores={iruru.deathcount=1..}] [{"text": "\"/function sys:debug_mode\"","clickEvent": {"action": "run_command","value": "/function sys:debug_mode"},"hoverEvent": {"action": "show_text","contents": "自身をデバッグチームに参加"}},{"text": "でデバッグモードを\nオンにします(クリックで実行)"}]
    # デバッグモードに設定
        execute as @a[scores={iruru.deathcount=1..}] run function cmd:debug_mode
    # deathcountを0に設定
        scoreboard players set @a[scores={iruru.deathcount=1..}] iruru.deathcount 0

# daycount
    # daytime
        execute if score $check iruru.check matches 1 run execute store result score $daytime iruru.daytime run time query daytime
    # day
        execute if score $check iruru.check matches 1 if score $daytime iruru.daytime matches 1 run scoreboard players add $day iruru.daycount 1
    # 日付を表示
        execute if score $check iruru.check matches 1 if score $daytime iruru.daytime matches 1 run title @a actionbar [{"score":{"name":"$day","objective":"iruru.daycount"},"color": "white"},{"text": "日目","color": "white"}]
        execute if score $check iruru.check matches 1 if score $daytime iruru.daytime matches 1 at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.25 0.75

# dayalert
    # $day = 1,6,11,16,31,41
        execute if score $daytime iruru.daytime matches 1 if score $day iruru.daycount matches 1 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $daytime iruru.daytime matches 1 if score $day iruru.daycount matches 6 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $daytime iruru.daytime matches 1 if score $day iruru.daycount matches 11 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $daytime iruru.daytime matches 1 if score $day iruru.daycount matches 16 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $daytime iruru.daytime matches 1 if score $day iruru.daycount matches 31 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}
        execute if score $daytime iruru.daytime matches 1 if score $day iruru.daycount matches 41 run tellraw @a {"text": "ゾンビの様子が変化した…","color": "gray"}

#> サバイバルのプレイヤー人数をカウントするscore_holder
# @private
    #declare score_holder $survivor

# tag
    # survivorタグを持つプレイヤー人数をカウント -> サバイバルのプレイヤー人数をカウント
        scoreboard players set $survivor iruru.survivor 0
        execute as @a[tag=Iruru.survivor] run scoreboard players add $survivor iruru.survivor 1
    # survivorが0人になったときゲームを終了する
        execute if score $check iruru.check matches 1 if score $survivor iruru.survivor matches 0 run function cmd:game_end

#> debug-mode用のscore_holder
# @private
    #declare score_holder 日にち
    #declare score_holder 現在時刻
    #declare score_holder 生存者数
    #declare score_holder レベル

# debug-mode
    # daytime
        execute if score $check iruru.check matches 1 run execute store result score 現在時刻 iruru.debug run scoreboard players get $daytime iruru.daytime
    # day
        execute if score $check iruru.check matches 1 run execute store result score 日にち iruru.debug run scoreboard players get $day iruru.daycount
    # survivor
        execute if score $check iruru.check matches 1 run execute store result score 生存者数 iruru.debug run scoreboard players get $survivor iruru.survivor
    # levels
        execute if score $check iruru.check matches 1 run execute store result score レベル iruru.debug run scoreboard players get $levels iruru.levels

#> スピード変更用のscore_holder(未使用)
# @private
    #declare score_holder $speed

# zombie
    # speed_check(under) , ..0
        #execute if score $speed iruru.m_speed matches ..0 run scoreboard players set $speed iruru.m_speed 10
        #execute if score $speed iruru.m_speed matches ..0 run tellraw @a {"text": "$speedの範囲は1~20です","color": "red"}
    # speed_check(over) , 21..
        #execute if score $speed iruru.m_speed matches 21.. run scoreboard players set $speed iruru.m_speed 10
        #execute if score $speed iruru.m_speed matches 21.. run tellraw @a {"text": "$speedの範囲は1~20です","color": "red"}

# killed_zombie
    # killed_zombie(calculation)
        scoreboard players operation @a[scores={iruru.killed_z=1..}] iruru.killed_zs += @a[scores={iruru.killed_z=1..}] iruru.killed_z
        scoreboard players operation @a[scores={iruru.killed_zv=1..}] iruru.killed_zs += @a[scores={iruru.killed_zv=1..}] iruru.killed_zv
        scoreboard players operation @a[scores={iruru.killed_d=1..}] iruru.killed_zs += @a[scores={iruru.killed_d=1..}] iruru.killed_d
    
    # killed_zombie_*(reset)
        scoreboard players set @a iruru.killed_z 0
        scoreboard players set @a iruru.killed_zv 0
        scoreboard players set @a iruru.killed_d 0
        