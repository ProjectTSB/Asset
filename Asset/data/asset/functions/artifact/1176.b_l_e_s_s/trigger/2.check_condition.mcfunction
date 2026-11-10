#> asset:artifact/1176.b_l_e_s_s/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1176.b_l_e_s_s/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand

# CanUsedでないならreturn
    execute if entity @s[tag=!CanUsed] run return fail

# 火薬が一定数ないならreturn
    execute store result score $A1176.ItemCount Temporary run clear @s gunpowder 0
    execute unless score $A1176.ItemCount Temporary matches 2.. run tag @s remove CanUsed
    scoreboard players reset $A1176.ItemCount
    execute if entity @s[tag=!CanUsed] run function lib:message/artifact/dont_have_require_items
    execute if entity @s[tag=!CanUsed] run return fail

# ターゲット選定
    scoreboard players set $WO.TargetID Temporary 0
    function asset:artifact/1176.b_l_e_s_s/trigger/select_target
    execute if score $WO.TargetID Temporary matches 0 run tellraw @s [{"text": "ターゲットがいません","color": "red"}]
    execute if score $WO.TargetID Temporary matches 0 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1176.b_l_e_s_s/trigger/3.main

# reset
    scoreboard players reset $WO.TargetID Temporary
