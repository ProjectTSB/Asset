#> asset:artifact/1690.airbag/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1690.airbag/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1690
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $A1690.Count

# アイテムチェック
    execute if entity @s[tag=CanUsed] store result score $A1690.Count Temporary run clear @s gunpowder 0
    execute if entity @s[tag=CanUsed] unless score $A1690.Count Temporary matches 1.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1690.airbag/trigger/3.main

# リセット
    scoreboard players reset $A1690.Count Temporary
