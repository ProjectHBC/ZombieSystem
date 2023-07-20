#> sys:_index.d
#
# スコアの宣言
#
# @within function sys:**

### ----- objectives -----

#> 回数記録用objectives(scoreboards)
# @public
    #declare objective iruru.deathcount
    #declare objective iruru.daycount
    #declare objective iruru.daytime
    #declare objective iruru.m_speed
    #declare objective iruru.survivor
    #declare objective iruru.debug
    #declare objective iruru.check
    #declare objective iruru.install
    #declare objective iruru.levels

#> ゾンビキル数
# @within function
#   sys:install/buildup
#   sys:repeat
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

#> 乱数生成用
# @within function
#   sys:install/buildup
#   loot:random
    #declare objective iruru.rng

### ----------

#> デバッグ用のチーム
# @within function sys:**
    #declare team Iruru.debugteam

#> サバイバータグ
# @within function
#   sys:repeat
#   cmd:**
    #declare tag Iruru.survivor

#> インベントリスロット番号記録用
# @within function
#   sys:chest/**
    #declare score_holder #Slot

#> 乱数生成記録用
# @within function
#   sys:install/buildup
#   loot:random
    #declare score_holder #4

#> IruruLevels
#
# ゾンビのステータスをレベル別に分けて定義したもの
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

#> ゾンビレベル記録用
# @within function
#   sys:repeat
#   sys:zombie_repeat
    #declare score_holder $levels

#> 日付を記録用
# @within function
#   sys:install/buildup
#   sys:repeat
#   sys:zombie_repeat 
#   cmd:game_*
    #declare score_holder $day

#> 現在時間記録用
# @within function
#   sys:install/buildup
#   sys:repeat
    #declare score_holder $daytime

#> 実行状態確認用
# @within function
#   sys:install/buildup
#   sys:repeat
#   sys:core/tick
#   cmd:game_*
    #declare score_holder $check

#> 基礎チェストストレージ
# @within function
#   sys:install/buildup
#   sys:chest/modify
    #declare storage iruru:based_tag_chest

#> チェストストレージ
# @within function
#   sys:chest/modify
    #declare storage iruru:chest
    