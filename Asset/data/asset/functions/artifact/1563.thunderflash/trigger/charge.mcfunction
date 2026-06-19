#> asset:artifact/1563.thunderflash/trigger/charge
#
#
#
# @within function asset:artifact/1563.thunderflash/trigger/2.check_condition

# チャージ続行
    data modify storage api: Argument.ID set value 375
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
