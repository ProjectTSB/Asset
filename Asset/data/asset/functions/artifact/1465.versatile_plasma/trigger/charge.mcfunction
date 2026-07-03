#> asset:artifact/1465.versatile_plasma/trigger/charge
#
#
#
# @within function asset:artifact/1465.versatile_plasma/trigger/2.check_condition

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 374
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
