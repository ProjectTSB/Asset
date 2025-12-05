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

# DoT:trueならCanUsedを削除
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{IsDoT:true} run tag @s remove CanUsed

# MPが90%未満ならCanUsedを削除
    execute if entity @s[tag=CanUsed] run function api:entity/player/get_mp_per
    execute if entity @s[tag=CanUsed] store result score $MPPer Temporary run data get storage api: Return.MPPer 100
    execute if entity @s[tag=CanUsed] unless score $MPPer Temporary matches 90.. run tag @s remove CanUsed
    scoreboard players reset $MPPer Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1327.lunatic_torch/trigger/3.main
