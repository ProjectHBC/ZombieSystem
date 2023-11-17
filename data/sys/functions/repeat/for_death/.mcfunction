#> sys:repeat/for_death/
#
# 死亡したプレイヤーに実行
#
# @within function sys:repeat/

# コマンド
    # first - プレイヤーをゾンビ化させる
        #execute as @a[scores={iruru.deathcount=1..}] at @s run function sys:repeat/for_death/first
    # second - プレイヤーをスペクテイターモードにする
        #execute as @a[scores={iruru.deathcount=-1}] at @s run function sys:repeat/for_death/second
        execute as @a[scores={iruru.deathcount=1..},team=!Iruru.zombieteam] at @s run function sys:repeat/for_death/second
    
    # 臨時
        execute as @a[scores={iruru.deathcount=1..},team=Iruru.zombieteam] at @s run scoreboard players set @s iruru.deathcount 0
