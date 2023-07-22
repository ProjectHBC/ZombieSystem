#> sys:event/vending_machine
#
# 自販機、今のところ無料
#

# メッセージ
    tellraw @a {"text": "イベント発生！\n(0,0)に自販機が出現！","color": "green"}

# イベント
    # ブロック設置
        fill -1 100 -1 1 100 1 minecraft:stone
        setblock 0 101 0 minecraft:iron_block
        setblock 0 102 0 minecraft:green_wool
    # 看板設置
        setblock 0 101 1 oak_wall_sign[facing=south]{Text1:'{"text":"Monster      ","color":"dark_green","bold":true,"italic":true}',Text2:'{"text":"      Energy","color":"dark_green","bold":true,"italic":true,"clickEvent":{"action":"run_command","value":"give @p potion{display:{Name:\'{\\"text\\":\\"Monster Energy\\",\\"color\\":\\"green\\",\\"bold\\":true,\\"italic\\":true}\'},HideFlags:32,CustomPotionEffects:[{Id:1,Amplifier:5b,Duration:400},{Id:4,Amplifier:5b,Duration:600},{Id:5,Amplifier:5b,Duration:400},{Id:8,Amplifier:3b,Duration:400},{Id:9,Amplifier:1b,Duration:40},{Id:10,Amplifier:3b,Duration:200},{Id:15,Amplifier:1b,Duration:40},{Id:16,Amplifier:1b,Duration:600},{Id:17,Amplifier:3b,Duration:20},{Id:18,Amplifier:3b,Duration:600},{Id:20,Amplifier:1b,Duration:40}],CustomPotionColor:2647068}"}}',Text3:'{"text":"Free","color":"white","bold":true,"underlined":true}'} replace
        