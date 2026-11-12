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

# CanUsedでないならreturn
    execute if entity @s[tag=!CanUsed] run return fail

# アイテムチェック
    execute store result score $A1690.Count Temporary run clear @s gunpowder 0
    execute unless score $A1690.Count Temporary matches 1.. run tag @s remove CanUsed
    scoreboard players reset $A1690.Count
    execute if entity @s[tag=!CanUsed] run return fail

# 範囲内に敵がいなけりゃ失敗
    execute unless entity @e[type=#lib:living_without_player,tag=Attacker,tag=!Uninterferable,distance=..32] run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# 3.main.mcfunctionを実行する
    function asset:artifact/1690.airbag/trigger/3.main
