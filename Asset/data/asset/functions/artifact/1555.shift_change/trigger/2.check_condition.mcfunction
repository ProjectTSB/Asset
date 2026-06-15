#> asset:artifact/1555.shift_change/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1555.shift_change/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand

# 他にアイテム等確認する場合はここに書く
# そもそも他人がいるか
    execute unless entity @a[tag=!this] run tag @s remove CanUsed
    execute unless entity @a[tag=!this] run tellraw @s [{"text": "おや?このサーバーにはあなたしかいないようですよ?","color": "gray"}]
# 入れ替え可能なプレイヤーがいるか
    execute if entity @a[tag=!this] unless entity @a[tag=!this,predicate=!lib:is_ban_tp_area] run tag @s remove CanUsed
    execute if entity @a[tag=!this] unless entity @a[tag=!this,predicate=!lib:is_ban_tp_area] run tellraw @s [{"text": "皆さんは今立て込んだ状況のようです...","color": "gray"}]
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1555.shift_change/trigger/3.main
