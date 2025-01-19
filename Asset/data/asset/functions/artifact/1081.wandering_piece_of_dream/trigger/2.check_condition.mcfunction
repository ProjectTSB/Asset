#> asset:artifact/1081.wandering_piece_of_dream/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1081.wandering_piece_of_dream/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1081
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# CanUsedなら使用回数スコアを加算
    execute if entity @s[tag=CanUsed] run scoreboard players add @s U1.Count 1

# スコアが4以下ならCanUsedを削除
    execute if entity @s[scores={U1.Count=..4}] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1081.wandering_piece_of_dream/trigger/3.main

# 値が5以上ならリセット
    execute if entity @s[scores={U1.Count=5..}] run scoreboard players reset @s U1.Count
