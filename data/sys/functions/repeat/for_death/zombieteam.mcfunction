#> sys:repeat/for_death/zombieteam
#
# 死亡したゾンビチームのプレイヤーに実行
#
# @within function sys:repeat/for_death/

# コマンド
    # 何もないよ

# メッセージ
    tellraw @s {"text": "ゾンビは何度でも蘇る…","color": "gray"}

# リセット
    scoreboard players set @s iruru.deathcount 0
    