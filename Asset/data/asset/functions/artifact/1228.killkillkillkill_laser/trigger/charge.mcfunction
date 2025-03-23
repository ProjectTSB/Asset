#> asset:artifact/1228.killkillkillkill_laser/trigger/charge
#
#
#
# @within function asset:artifact/1228.killkillkillkill_laser/trigger/2.check_condition

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 320
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
