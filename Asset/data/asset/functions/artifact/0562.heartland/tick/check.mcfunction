#> asset:artifact/0562.heartland/tick/check
#
# 神器の居よう条件の確認処理
#
# @within function asset:artifact/alias/562/tick/check

# 装備をすべて身に着けているかチェック
    data modify storage api: Argument.ID set value 237
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed
