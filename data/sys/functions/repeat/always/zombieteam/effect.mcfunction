#> sys:repeat/always/zombieteam/effect
#
# ゾンビチームにエフェクトを付与
#
# @within function sys:repeat/always/zombieteam/

# コマンド
    #replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"ゾンビの足","color":"dark_red","italic":false}',color:5701632},Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:255s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
    #effect give @s minecraft:slowness 1000000 1 true
    #effect give @s parcool:inexhaustible 1000000 0 true
    effect give @s minecraft:regeneration 1000000 2 true
    effect give @s minecraft:health_boost 1000000 4 true
    effect give @s resistance 1000000 1 true
    execute as @s if score $day iruru.daycount matches 41..44 run effect give @s strength 1000000 7
    execute as @s if score $day iruru.daycount matches 45..49 run effect give @s strength 1000000 11
    execute as @s if score $day iruru.daycount matches 50 run effect give @s strength 1000000 14
    