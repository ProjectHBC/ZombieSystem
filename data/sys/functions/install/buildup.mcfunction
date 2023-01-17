#> sys:install/buildup
#
# 必要な準備データを生成
#
# @within tag/function sys:buildup

# スコアボード作成
    # 死亡回数を記録用
        scoreboard objectives add iruru.deathcount deathCount
    # 日にち記録用
        scoreboard objectives add iruru.daycount dummy

# スコア代入
    # 日にち記録用
        scoreboard players set $day iruru.daycount 0
