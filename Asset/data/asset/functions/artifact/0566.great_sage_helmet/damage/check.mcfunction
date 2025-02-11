#> asset:artifact/0566.great_sage_helmet/damage/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/566/damage/check

# フルセットかどうか確認する
    data modify storage api: Argument.ID set value 256
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed
