#> asset:artifact/1327.lunatic_torch/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1327.lunatic_torch/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $MPPer

# CanUsedでないならreturn
    execute if entity @s[tag=!CanUsed] run return fail

# DoT:trueならreturn
    execute if data storage asset:context Attack{IsDoT:true} run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# MPが90%未満ならreturn
    function api:entity/player/get_mp_per
    execute store result score $MPPer Temporary run data get storage api: Return.MPPer 100
    execute unless score $MPPer Temporary matches 90.. run tag @s remove CanUsed
    scoreboard players reset $MPPer Temporary
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    function asset:artifact/1327.lunatic_torch/trigger/3.main
