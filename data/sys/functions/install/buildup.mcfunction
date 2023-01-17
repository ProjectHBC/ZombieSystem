#> sys:install/buildup
#
# 必要な準備データを生成
#
# @within tag/function sys:install/buildup

# スコアボード作成
    # 死亡回数を記録用
        scoreboard objectives add iruru.deathcount deathCount
    # 日にち記録用
        scoreboard objectives add iruru.daycount dummy
    # スピード記録用
        scoreboard objectives add iruru.m_speed dummy
    # インストール記録用 ## ストレージあったけど、使わないから無視
        #scoreboard objectives add iruru.install dummy

# スコア代入
    # 日にち記録用
        scoreboard players set $day iruru.daycount 0
        #scoreboard players set $dayscore1 iruru.daycount 1
        #scoreboard players set $dayscore10 iruru.daycount 10
        #scoreboard players set $dayscore11 iruru.daycount 11
        #scoreboard players set $dayscore21 iruru.daycount 21
        #scoreboard players set $dayscore41 iruru.daycount 41
    # スピード記録用 (0.1~2.0)
        scoreboard players add $speed iruru.m_speed 10
    # インストールチェック用
        #scoreboard players set $install iruru.install 1
        