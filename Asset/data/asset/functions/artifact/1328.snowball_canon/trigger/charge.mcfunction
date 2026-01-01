#> asset:artifact/1328.snowball_canon/trigger/charge
#
#
#
# @within function asset:artifact/1328.snowball_canon/trigger/2.check_condition

# チャージ用Effect付与
    data modify storage api: Argument.ID set value 347
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
