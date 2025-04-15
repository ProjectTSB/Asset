#> asset:artifact/1227.aurora_scythe/trigger/charge
#
#
#
# @within function asset:artifact/1227.aurora_scythe/trigger/2.check_condition

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 315
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
