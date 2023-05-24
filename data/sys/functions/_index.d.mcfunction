#> sys:_index.d
#
# スコアの宣言
#
# @within function sys:**

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
    #declare objective iruru.killed_zs
    #declare objective iruru.killed_z
    #declare objective iruru.killed_zv
    #declare objective iruru.killed_d

#> デバッグ用のチーム
# @within function sys:**
    #declare team Iruru.debugteam

#> サバイバータグ
# @within function
#   sys:repeat
#   cmd:**
    #declare tag Iruru.survivor

#> デバッグ用のタグ(未使用)
# @private
    #declare tag Iruru.debugplayer

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
