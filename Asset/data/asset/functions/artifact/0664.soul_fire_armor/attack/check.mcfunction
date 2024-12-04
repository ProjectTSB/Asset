#> asset:artifact/0664.soul_fire_armor/attack/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/664/attack/check

# 装備をすべて身に着けているかチェックする
    data modify storage api: Argument.ID set value 232
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed
