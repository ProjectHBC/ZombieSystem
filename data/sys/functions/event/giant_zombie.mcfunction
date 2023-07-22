#> sys:event/giant_zombie
#
# ジャイアント発生のイベント
#
# @within function event:controller

# メッセージ
    tellraw @a {"text": "イベント発生！\n誰かの上空にジャイアントがスポーン！","color": "green"}

# イベント
    # サバイバーの誰か一人の上空にジャイアントを召喚
        execute at @r[tag=Iruru.survivor] run summon giant ~ ~50 ~ {Passengers:[{id:"minecraft:zombie",IsBaby:1b,Attributes:[{Name:"generic.max_health",Base:1}]}],ActiveEffects:[{Id:28,Amplifier:0b,Duration:1200,ShowParticles:1b}]}
