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

# チーム作成とモディファイ
    # create:デバッグ用
        team add Iruru.debugteam
    # modify:デバッグ用
        team modify Iruru.debugteam color gray
    # スコアボードを表示
        scoreboard objectives setdisplay sidebar.team.gray iruru.debug
    # プレフィックスを設定
        team modify Iruru.debugteam prefix {"text": "[DEAD] ","color": "gray"} 

# shulker_box
    # 基礎チェストストレージを定義
        data modify storage iruru:based_tag_chest tag set value {display:{Name:'{"text":"chest"}'}}

    # 強制ロード
        forceload add 0 0

    # 設置
        setblock 0 1 0 shulker_box replace
        data merge block 0 1 0 {Items:[{Slot:0b,id:"minecraft:chest",Count:1b}]}

# 乱数生成用
    # iruru.rngスコアを4に設定
        scoreboard players set #4 iruru.rng 4

    # 小ゾンビ乱数用
        scoreboard objectives add iruru.z_rnd dummy
        scoreboard players set #100 iruru.z_rnd 100