#> sys:event/custom_spawner/select_set
#
# 指定した座標にカスタムスポナーを設置する
#
# @user

# 単体でないことを指定
    data modify storage iruru:cs_storage self set value false

# 指定座標にカスタムスポナーを設置
    # ビル拠点
        execute positioned -333 151 -511 run function sys:event/custom_spawner/set
        execute positioned -333 151 -499 run function sys:event/custom_spawner/set
        execute positioned -345 151 -499 run function sys:event/custom_spawner/set
        execute positioned -345 151 -511 run function sys:event/custom_spawner/set
        execute positioned -338 151 -506 run function sys:event/custom_spawner/set
    # ゾンビ拠点
        execute positioned -653 75 -299 run function sys:event/custom_spawner/set
        execute positioned -658 70 -338 run function sys:event/custom_spawner/set
        execute positioned -629 66 -302 run function sys:event/custom_spawner/set
        execute positioned -634 66 -326 run function sys:event/custom_spawner/set

# カスタムスポナー臨時集計用
    execute store result score $cs_count iruru.cs_timer if entity @e[tag=Iruru.custom_spawner]

# メッセージ
    # 設置が完了
        execute if score $cs_count iruru.cs_timer matches 9 run tellraw @s {"text": "カスタムスポナーを指定座標に設置しました。\n既にほかのカスタムスポナーが設置されている場合、不具合がある可能性があります。","color": "green"}
    # 設置が未完了、エラーとして処理
        execute if score $cs_count iruru.cs_timer matches ..8 run tellraw @s {"text": "カスタムスポナーを指定座標に設置できませんでした。\n指定座標がロードされてない可能性があります。\n再実行する前にカスタムスポナーを削除することを推奨します。","color": "red"}

# 指定をリセット
    data modify storage iruru:cs_storage self set value true
    #data modify storage iruru:cs_storage set_check set value []
