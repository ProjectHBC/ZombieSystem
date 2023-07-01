#> adv:changed/inventory
#
# インベントリが変更された時に実行される
#
# @within advancement/changed_inventory

# コマンド
    function sys:chest/modify
    #say changed

# 進捗をリセット
    advancement revoke @s only adv:changed_inventory
