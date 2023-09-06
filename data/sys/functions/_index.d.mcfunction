#> sys:_index.d
#
# スコアの宣言、宣言の範囲は気にしないで…
#
# @within function 
#   sys:**
#   **

#> 実行判定
#
# ゲームが起動中かの判定に用いられる(今思うとstorageでも良かった)
#
# @within function **
    #declare objective iruru.check

#> 実行判定
# @within function
#   sys:install/buildup
#   sys:repeat/
#   sys:core/**
#   loot:**
#   cmd:game_*
    #declare score_holder $check

#> 日付記録用
# @within function **
    #declare objective iruru.daycount

#> 日付記録用
# @within function
#   sys:install/buildup
#   sys:repeat/ 
#   cmd:game_*
    #declare score_holder $day

#> 現在時間記録用
# @within function **
    #declare objective iruru.daytime

#> 現在時間記録用
# @within function
#   sys:install/buildup
#   sys:repeat/
    #declare score_holder $daytime

#> 参加人数記録用
# @within function
#   sys:**
#   cmd:game_**
    #declare objective iruru.player

#> 参加人数記録用
# @within function
#   sys:**
#   cmd:game_**
    #declare score_holder $player

#> 生存者数記録用
# @within function
#   sys:**
#   cmd:game_**
    #declare objective iruru.survivor

#> 生存者数記録用
# @within function
#   sys:**
#   cmd:game_**
    #declare score_holder $survivor

#> サバイバータグ
# @within function
#   sys:repeat/
#   cmd:**
    #declare tag Iruru.survivor

#> デバッグスコアボード
#
# 情報(現在時刻、日にち、レベル、生存者数)を掲載したスコアボード
#
# @within function
#   sys:**
#   cmd:**
    #declare objective iruru.debug

#> デバッグ用のチーム
# @within function sys:**
    #declare team Iruru.debugteam

#> ゾンビレベル
# @within function
#   sys:**
#   cmd:game_**
    #declare objective iruru.levels

#> ゾンビレベル
# @within function
#   sys:repeat/
    #declare score_holder $levels

#> IruruZombieLevels
#
# ゾンビのステータスをレベル別に分けて定義したもの
#
# @within function sys:zombie_status/**
    #declare tag Iruru.lv1
    #declare tag Iruru.lv2
    #declare tag Iruru.lv3
    #declare tag Iruru.lv4
    #declare tag Iruru.lv5
    #declare tag Iruru.lv6
    #declare tag Iruru.lv7
    #declare tag Iruru.lv8
    #declare tag Iruru.lv9
    #declare tag Iruru.lv10

#> ゾンビキル数
# @within function
#   sys:install/buildup
#   sys:repeat/
#   cmd:game_**
    #declare objective iruru.killed_zs
    #declare objective iruru.killed_z
    #declare objective iruru.killed_zv
    #declare objective iruru.killed_d
    #declare objective iruru.killed_h

#> インベントリスロット番号
# @within function
#   sys:install/buildup
#   sys:chest/**
    #declare objective iruru.chest_num

#> インベントリスロット番号記録用
# @within function
#   sys:chest/**
    #declare score_holder #Slot

#> 乱数生成用
# @within function
#   sys:install/buildup
#   loot:random
    #declare objective iruru.rng

#> 乱数生成記録用
# @within function
#   sys:install/buildup
#   loot:random
    #declare score_holder #4

#> 基礎チェストストレージ
# @within function
#   sys:install/buildup
#   sys:chest/modify
    #declare storage iruru:based_tag_chest

#> チェストストレージ
# @within function
#   sys:chest/modify
    #declare storage iruru:chest

#> ポーズアナウンス
# @within function
#   sys:install/**
#   sys:core/**
    #declare bossbar iruru:announcement
