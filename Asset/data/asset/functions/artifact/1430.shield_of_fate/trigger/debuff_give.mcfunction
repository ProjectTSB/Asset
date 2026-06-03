#> asset:artifact/1430.shield_of_fate/trigger/debuff_give
#
# debuffの付与を行う
#
# @within function asset:artifact/1430.shield_of_fate/trigger/3.main

#>Effect付与
    data modify storage api: Argument.ID set value 355
    execute as @s run function api:entity/mob/effect/give
