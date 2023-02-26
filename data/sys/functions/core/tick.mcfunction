#> sys:core/tick
#
# 常時実行のファンクション
#

# 常時実行(スペクテイターモード変更と日付とspeed_check)
    function sys:repeat

# ゾンビのステータス変更
    execute if score $check iruru.check matches 1 run function sys:zombie_repeat
    