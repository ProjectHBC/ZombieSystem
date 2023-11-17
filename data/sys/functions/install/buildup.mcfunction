#> sys:install/buildup
#
# 必要な準備データを生成
#
# @within tag/function sys:core/load

# スコアボードとストレージを作成
    # 死亡回数を記録用
        scoreboard objectives add iruru.deathcount deathCount
    # 日にち記録用
        scoreboard objectives add iruru.daycount dummy
    # 時間記録用
        scoreboard objectives add iruru.daytime dummy
    # サバイバーの人数記録用
        scoreboard objectives add iruru.survivor dummy
    # サーバーの人数記録用(計算用)
        scoreboard objectives add iruru.player dummy
    # デバッグ用
        scoreboard objectives add iruru.debug dummy "情報(debug)"
    # ゲーム作動チェック用
        scoreboard objectives add iruru.check dummy
    # ゲーム状態記録用
        #data modify storage iruru:condition condition set value "null"
    # インストール記録用 ## ストレージあったけど、使わないから無視
        #scoreboard objectives add iruru.install dummy
    # ゾンビのレベル記録用
        scoreboard objectives add iruru.levels dummy
    # ゾンビのキル数記録用
        scoreboard objectives add iruru.killed_zs dummy "ゾンビの合計キル数"
        scoreboard objectives add iruru.killed_z minecraft.killed:zombie
        scoreboard objectives add iruru.killed_zv minecraft.killed:zombie_villager
        scoreboard objectives add iruru.killed_d minecraft.killed:drowned
        scoreboard objectives add iruru.killed_h minecraft.killed:husk
    # 乱数生成用
        scoreboard objectives add iruru.rng dummy
    # スロットナンバー記録用
        scoreboard objectives add iruru.chest_num dummy
    # カスタムスポナー用のタイマー
        scoreboard objectives add iruru.cs_timer dummy
    # 体力カウンター
        scoreboard objectives add iruru.health health "体力"

# チーム関連
    # チームを作成
        team add Iruru.debugteam
        team add Iruru.zombieteam
    # モディファイを設定
        team modify Iruru.debugteam color gray
        team modify Iruru.zombieteam color dark_red
        team modify Iruru.zombieteam nametagVisibility hideForOtherTeams
        team modify Iruru.zombieteam deathMessageVisibility hideForOtherTeams
    # スコアボードを表示
        scoreboard objectives setdisplay sidebar.team.gray iruru.debug
        scoreboard objectives setdisplay sidebar.team.dark_red iruru.health
    # プレフィックスを設定
        team modify Iruru.debugteam prefix {"text": "[DEAD] ","color": "gray"}
        team modify Iruru.zombieteam prefix {"text": "[ZOMBIE] ","color": "dark_red"}

# shulker_box
    # 基礎チェストストレージを定義
        data modify storage iruru:based_tag_chest tag set value {display:{Name:'{"text":"chest"}'}}
    # 強制ロード
        forceload add 0 0
    # 設置
        setblock 0 1 0 shulker_box replace
        data merge block 0 1 0 {Items:[{Slot:0b,id:"minecraft:chest",Count:1b}]}

# 乱数生成用
    # iruru.rngスコアを設定
        scoreboard players set #4 iruru.rng 4
        scoreboard players set #100 iruru.rng 100
        
# ボスバー
    # iruru:announcementを設定
        bossbar add iruru:announcement ""
    # 名前を変更
        bossbar set iruru:announcement name "現在ゲームは停止中です"
    # 色を変更 
        bossbar set iruru:announcement color red
    # 値を変更(初期の最大値)
        bossbar set iruru:announcement value 100
        