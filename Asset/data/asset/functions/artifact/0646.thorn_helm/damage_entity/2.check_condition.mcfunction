#> asset:artifact/0646.thorn_helm/damage_entity/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0646.thorn_helm/damage_entity/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/head
# 他にアイテム等確認する場合はここに書く

#> temp
# @private
    #declare score_holder $HY.Temp

# 装備をすべて身に着けているかチェックする
    data modify storage api: Argument.ID set value 239
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed

# クールダウンチェック
    execute store result score $HY.Temp Temporary run data get storage global Time
    scoreboard players operation $HY.Temp Temporary -= @s HY.LatestUsedTick
    execute unless score $HY.Temp Temporary matches 20.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] store result score @s HY.LatestUsedTick run data get storage global Time
    scoreboard players reset $HY.Temp Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0646.thorn_helm/damage_entity/3.main
