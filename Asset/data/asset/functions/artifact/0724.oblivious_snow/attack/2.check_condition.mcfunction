#> asset:artifact/0724.oblivious_snow/attack/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0724.oblivious_snow/attack/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag set value {CDMessage:true}
    function asset:artifact/common/check_condition/head
# 装備をすべて身に着けているかチェックする
    data modify storage api: Argument.ID set value 243
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0724.oblivious_snow/attack/3.main
