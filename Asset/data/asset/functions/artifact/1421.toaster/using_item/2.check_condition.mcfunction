#> asset:artifact/1421.toaster/using_item/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1421.toaster/using_item/1.trigger

#> Private
# @private
    #declare score_holder $Count

# チャージ中は開始時の消費とクールダウン判定を繰り返さない
    data modify storage api: Argument.ID set value 415
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return run function asset:artifact/1421.toaster/using_item/charge

# 発射が終わるまで次のチャージを開始しない
    data modify storage api: Argument.ID set value 416
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return fail

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
    execute if entity @s[tag=!CanUsed] run return fail
    execute store result score $Count Temporary run clear @s bread 0
    execute unless score $Count Temporary matches 1.. run tag @s remove CanUsed
    scoreboard players reset $Count Temporary
    execute if entity @s[tag=!CanUsed] run function lib:message/artifact/dont_have_require_items

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1421.toaster/using_item/3.main
