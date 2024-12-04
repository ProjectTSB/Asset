#> asset:artifact/0558.solitariness/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/558/attack_melee/check

# 装備をすべて身に着けているかチェックする
    data modify storage api: Argument.ID set value 236
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed
