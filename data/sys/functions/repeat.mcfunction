#> sys:repeat
#
# 常時実行ファンクション
#

# 死亡したプレイヤーに実行
    # スペクテイターモードに変更
        execute if score $check iruru.check matches 1 run gamemode spectator @a[scores={iruru.deathcount=1..}]
    # タグを剝奪
        #tag @a[scores={iruru.deathcount=1..}] remove Iruru.survivor
    # 死亡メッセージを表示
        tellraw @a[scores={iruru.deathcount=1..}] [{"text": "✞復活することができません！✞","color": "red"}]
    # deathplayerタグを設定 - 意味ないので回避
        #tag @a[scores={iruru.deathcount=1..}] add Iruru.deathplayer
        #tellraw @a[scores={iruru.deathcount=1..},tag=Iruru.deathplayer] {"text": "\"Iruru.deathplayer\"タグを付与しました","color": "gray"}
        #tellraw @a[scores={iruru.deathcount=1..},tag=Iruru.deathplayer] [{"text": "\"/function sys:debug_mode\"","clickEvent": {"action": "run_command","value": "/function sys:debug_mode"},"hoverEvent": {"action": "show_text","contents": "自身をデバッグチームに参加"}},{"text": "でデバッグモードをオンにします(クリックで実行)"}]
        tellraw @a[scores={iruru.deathcount=1..}] [{"text": "\"/function sys:debug_mode\"","clickEvent": {"action": "run_command","value": "/function sys:debug_mode"},"hoverEvent": {"action": "show_text","contents": "自身をデバッグチームに参加"}},{"text": "でデバッグモードを\nオンにします(クリックで実行)"}]
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

# tag
    # survivorにタグを付与
        #tag @a[gamemode=survival] add Iruru.survivors 
    # survivorタグを持つプレイヤー人数をカウント -> サバイバルのプレイヤー人数をカウント
        scoreboard players set $survivor iruru.survivor 0
        execute as @a[gamemode=survival] run scoreboard players add $survivor iruru.survivor 1
    # survivorが0人になったときゲームを終了する
        execute if score $check iruru.check matches 1 if score $survivor iruru.survivor matches 0 run function sys:end

# debug-mode
    # daytime
        execute if score $check iruru.check matches 1 run execute store result score 現在時刻 iruru.debug run scoreboard players get $daytime iruru.daytime
    # day
        execute if score $check iruru.check matches 1 run execute store result score 日にち iruru.debug run scoreboard players get $day iruru.daycount
    # survivor
        execute if score $check iruru.check matches 1 run execute store result score 生存者数 iruru.debug run scoreboard players get $survivor iruru.survivor


# zombie
    # speed_check(under) , ..0
        execute if score $speed iruru.m_speed matches ..0 run scoreboard players set $speed iruru.m_speed 10
        execute if score $speed iruru.m_speed matches ..0 run tellraw @a {"text": "$speedの範囲は1~20です","color": "red"}
    # speed_check(over) , 21..
        execute if score $speed iruru.m_speed matches 21.. run scoreboard players set $speed iruru.m_speed 10
        execute if score $speed iruru.m_speed matches 21.. run tellraw @a {"text": "$speedの範囲は1~20です","color": "red"}
