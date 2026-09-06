#> asset:artifact/1590.rice_cooker/trigger/charge
#
#
#
# @within function asset:artifact/1590.rice_cooker/trigger/2.check_condition

# Effect 392を上書き付与
    data modify storage api: Argument.ID set value 392
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
