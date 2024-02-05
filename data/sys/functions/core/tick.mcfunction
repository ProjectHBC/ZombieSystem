#> sys:core/tick
#
# 常時実行のファンクション
#
# @within tag/function minecraft:tick

# 常時実行
    function sys:repeat/

# ゾンビのステータス変更
    execute if score $check iruru.check matches 1 run function sys:zombie_status/controller
