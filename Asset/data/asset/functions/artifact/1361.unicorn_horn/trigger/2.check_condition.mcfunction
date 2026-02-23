#> asset:artifact/1361.unicorn_horn/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1361.unicorn_horn/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1361
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $MaxDamage
    #declare score_holder $RequireDamage

# CanUsedじゃなければreturn
    execute if entity @s[tag=!CanUsed] run return fail

# IsDoT:trueならreturn
    execute if data storage asset:context Attack{IsDoT:true} run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# Victimがいなければreturn
    execute unless entity @e[type=#lib:living_without_player,tag=Victim,distance=..64,limit=1] run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# 最大ダメージが要求ダメージ以上か？
    scoreboard players set $RequireDamage Temporary 16000
    execute store result score $MaxDamage Temporary run data get storage asset:context Attack.Amount 10
    execute unless score $MaxDamage Temporary >= $RequireDamage Temporary run tag @s remove CanUsed
    scoreboard players reset $RequireDamage Temporary
    scoreboard players reset $MaxDamage Temporary
    execute if entity @s[tag=!CanUsed] run return fail

# 3.main.mcfunctionを実行する
    function asset:artifact/1361.unicorn_horn/trigger/3.main
