#> asset:artifact/1648.cursed_power_stone/trigger/reset
#
#
#
# @within function asset:artifact/1648.cursed_power_stone/trigger/2.check_condition

# Effect427を削除
    data modify storage api: Argument.ID set value 427
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# 装備中タグを削除
    tag @s remove A1648.Equipping
