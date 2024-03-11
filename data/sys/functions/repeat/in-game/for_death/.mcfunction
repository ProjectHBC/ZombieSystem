#> sys:repeat/in-game/for_death/
#
# 死亡したプレイヤーに実行
#
# @within function sys:repeat/in-game/

# コマンド
    # survivor用 - Iruru.survivorタグを持つプレイヤーに実行
        execute as @a[scores={iruru.deathcount=1..},tag=Iruru.survivor] at @s run function sys:repeat/in-game/for_death/survivor
    
    # zombieteam用 - ゾンビチームのプレイヤーに実行
        execute as @a[scores={iruru.deathcount=1..},team=Iruru.zombieteam] at @s run function sys:repeat/in-game/for_death/zombieteam
