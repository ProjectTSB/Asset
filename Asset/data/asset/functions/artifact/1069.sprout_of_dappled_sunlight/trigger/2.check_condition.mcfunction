#> asset:artifact/1069.sprout_of_dappled_sunlight/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1069.sprout_of_dappled_sunlight/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1069
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# CanUsedなら使用回数スコアを加算
    execute if entity @s[tag=CanUsed] run scoreboard players add @s TP.UseCount 1

# スコアが2以下ならCanUsedを削除
    execute if entity @s[scores={TP.UseCount=..2}] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1069.sprout_of_dappled_sunlight/trigger/3.main

# 値が3以上ならリセット
    execute if entity @s[scores={TP.UseCount=3..}] run scoreboard players reset @s TP.UseCount
