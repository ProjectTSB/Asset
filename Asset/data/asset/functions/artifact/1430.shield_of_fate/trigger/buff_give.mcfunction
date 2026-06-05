#> asset:artifact/1430.shield_of_fate/trigger/buff_give
#
# baffの付与を行う
#
# @within function asset:artifact/1430.shield_of_fate/trigger/3.main

#>Effect付与
    data modify storage api: Argument.ID set value 354
    function api:entity/mob/effect/give
