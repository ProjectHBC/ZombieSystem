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
    # 時間記録用
        scoreboard objectives add iruru.daytime dummy
    # スピード記録用
        scoreboard objectives add iruru.m_speed dummy
    # サバイバーの人数記録用
        scoreboard objectives add iruru.survivor dummy
    # デバッグ用
        scoreboard objectives add iruru.debug dummy "情報(debug)"
    # ゲーム作動チェック用
        scoreboard objectives add iruru.check dummy
    # インストール記録用 ## ストレージあったけど、使わないから無視
        #scoreboard objectives add iruru.install dummy

# チーム作成とモディファイ
    # 作成:デバッグ用
        team add Iruru.debugteam
    # モディファイ:デバッグ用
        team modify Iruru.debugteam color gray
    # スコアボードを表示 - 人がいないとダメ？
        scoreboard objectives setdisplay sidebar.team.gray iruru.debug

# スコア代入 - 起動中には実行されません！！
    # ゲーム作動チェック用
        #scoreboard players set $check iruru.check 0
        #0は停止中、1は起動中
    # 日にち記録用
        execute if score $check iruru.check matches 0 run scoreboard players set $day iruru.daycount 0
        execute if score $check iruru.check matches 0 run scoreboard players set $daytime iruru.daytime 0
        #scoreboard players set $dayscore1 iruru.daycount 1
        #scoreboard players set $dayscore10 iruru.daycount 10
        #scoreboard players set $dayscore11 iruru.daycount 11
        #scoreboard players set $dayscore21 iruru.daycount 21
        #scoreboard players set $dayscore41 iruru.daycount 41
    # スピード記録用 (0.1~2.0)
        execute if score $check iruru.check matches 0 run scoreboard players set $speed iruru.m_speed 10
    # サバイバーの人数記録用
        execute if score $check iruru.check matches 0 run scoreboard players set $survivor iruru.survivor 0
    # インストールチェック用
        #scoreboard players set $install iruru.install 1
        