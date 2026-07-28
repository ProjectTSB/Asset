#> asset:artifact/1421.toaster/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1421.toaster/trigger/1.trigger

#> Private
# @private
    #declare score_holder $Count

# チャージ用Effectがあれば強制的にチャージ続行
    data modify storage api: Argument.ID set value 362
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return run function asset:artifact/1421.toaster/trigger/charge

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedでなければreturn
    execute if entity @s[tag=!CanUsed] run return fail

# パンがn個以上か？
    execute store result score $Count Temporary run clear @s bread 0
    execute unless score $Count Temporary matches 1.. run tag @s remove CanUsed
    scoreboard players reset $Count Temporary
    execute if entity @s[tag=!CanUsed] run function lib:message/artifact/dont_have_require_items
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1421.toaster/trigger/3.main
