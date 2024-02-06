#> sys:repeat/for_death/zombieteam
#
# 死亡したゾンビチームのプレイヤーに実行
#
# @within function sys:repeat/for_death/

# コマンド
    #replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"ゾンビの足","color":"dark_red","italic":false}',color:5701632},Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:255s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
    effect give @s minecraft:slowness 1000000 1 true
    effect give @s parcool:inexhaustible 1000000 0 true
    effect give @s minecraft:regeneration 1000000 2 true
    effect give @s minecraft:health_boost 1000000 4 true

# メッセージ
    tellraw @s {"text": "ゾンビは何度でも蘇る…","color": "gray"}

# リセット
    scoreboard players set @s iruru.deathcount 0
    