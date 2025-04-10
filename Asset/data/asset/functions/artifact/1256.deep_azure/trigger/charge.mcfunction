#> asset:artifact/1256.deep_azure/trigger/charge
#
#
#
# @within function asset:artifact/1256.deep_azure/trigger/2.check_condition

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 329
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
