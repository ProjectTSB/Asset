#> asset:artifact/1619.volt_rave/trigger/charge
#
#
#
# @within function asset:artifact/1619.volt_rave/trigger/2.check_condition

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 394
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
