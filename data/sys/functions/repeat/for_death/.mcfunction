#> sys:repeat/for_death/
#
# 死亡したプレイヤーに実行
#
# @within function sys:repeat/

# コマンド
    # survivor用 - Iruru.survivorタグを持つプレイヤーに実行
        execute as @a[scores={iruru.deathcount=1..},tag=Iruru.survivor] at @s run function sys:repeat/for_death/survivor
    
    # zombieteam用 - ゾンビチームのプレイヤーに実行
        execute as @a[scores={iruru.deathcount=1..},team=Iruru.zombieteam] at @s run function sys:repeat/for_death/zombieteam
