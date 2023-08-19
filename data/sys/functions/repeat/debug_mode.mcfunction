#> sys:repeat/debug_mode
#
# デバック用のスコアボード用のコマンド
#
# @within function sys:repeat/

#> debug-mode用のscore_holder
# @private
    #declare score_holder 日にち
    #declare score_holder 現在時刻
    #declare score_holder 生存者数
    #declare score_holder レベル

# コマンド
    # daytime
        execute store result score 現在時刻 iruru.debug run scoreboard players get $daytime iruru.daytime
    # day
        execute store result score 日にち iruru.debug run scoreboard players get $day iruru.daycount
    # survivor
        execute store result score 生存者数 iruru.debug run scoreboard players get $survivor iruru.survivor
    # levels
        execute store result score レベル iruru.debug run scoreboard players get $levels iruru.levels
