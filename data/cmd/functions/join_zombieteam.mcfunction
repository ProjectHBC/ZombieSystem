#> cmd:join_zombieteam
#
# ゾンビチームに参加する
#
# @public

# チームに追加
    team join Iruru.zombieteam @s

# ゾンビの足を装備
    #replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"ゾンビの足","color":"dark_red","italic":false}',color:5701632},Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:255s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
    effect give @s minecraft:slowness 1000000 1 true
    effect give @s parcool:inexhaustible 1000000 0 true
    effect give @s minecraft:regeneration 1000000 2 true
    effect give @s minecraft:health_boost 1000000 4 true

# メッセージ
    tellraw @s {"text": "ゾンビチームに参加しました","color": "gray"}
    