#> cmd:game/play
#
# 一時停止したゲームを再開するときに使う
#
# @public

# ゲームルール:デイサイクルをオン
    execute if score $check iruru.check matches 1 run gamerule doDaylightCycle true
# カスタムスポナーの稼働を再開
    execute if score $check iruru.check matches 1 run function sys:event/custom_spawner/mode/on
# ゲームモードをサバイバルに変更
    execute if score $check iruru.check matches 1 run gamemode survival @a[tag=Iruru.survivor]
    execute if score $check iruru.check matches 1 run gamemode survival @a[team=Iruru.zombieteam]

# メッセージ
    execute if score $check iruru.check matches 1 run tellraw @a {"text": "ゲームを再開しました\n時間やゾンビが動き出します","color": "gray"}
    execute if score $check iruru.check matches 0 run tellraw @a {"text": "ゲームは起動していません","color": "gray"}

# アナウンス
    execute if score $check iruru.check matches 1 run bossbar set iruru:announcement players
    # pause中はalwaysにする必要があるはず
