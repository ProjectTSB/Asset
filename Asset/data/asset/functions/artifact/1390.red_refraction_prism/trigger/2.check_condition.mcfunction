#> asset:artifact/1390.red_refraction_prism/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1390.red_refraction_prism/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1390
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# CanUsedじゃないならreturn
    execute if entity @s[tag=!CanUsed] run return fail

# バニラ攻撃ならreturn
    execute if data storage asset:context Attack{IsVanilla:true} run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# DoTならreturn
    execute if data storage asset:context Attack{IsDoT:true} run return fail
    execute if entity @s[tag=!CanUsed] run return fail

# 水属性ならreturn
    execute if data storage asset:context Attack{ElementType:"Water"} run return fail
    execute if entity @s[tag=!CanUsed] run return fail

# Victimがいなければreturn
    execute unless entity @e[type=#lib:living_without_player,tag=Victim,distance=..64] run return fail
    execute if entity @s[tag=!CanUsed] run return fail

# 3.main.mcfunctionを実行する
    function asset:artifact/1390.red_refraction_prism/trigger/3.main
