#> sys:repeat/for_death/first
#
# 死亡したプレイヤーに実行 - プレイヤーをゾンビ化させる
#
# @within function sys:repeat/for_death/

# コマンド
    # リセット - iruru.deathcountを-2に設定
        scoreboard players set @s iruru.deathcount -2
    # tmp-asを召喚
        execute as @s at @s run summon armor_stand ~ ~ ~ {Tags:["Iruru.tmp-as"]}
    # tmp-asにtp
        tp @s @e[tag=Iruru.tmp-as,limit=1]
    # プレイヤーを感染させる
        effect give @s hordes:infected 100 4 true
        effect give @s minecraft:blindness 100 100 true
        effect give @s minecraft:slowness 100 100 true
        effect give @s minecraft:jump_boost 100 200 true
    # tmp-asをkill
        kill @e[tag=Iruru.tmp-as]
