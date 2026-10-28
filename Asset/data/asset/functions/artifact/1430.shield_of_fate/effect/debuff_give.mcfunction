#> asset:artifact/1430.shield_of_fate/effect/debuff_give
#
# デバフの付与
#
# @within function
#   asset:artifact/1430.shield_of_fate/trigger/3.main
#   asset:artifact/1430.shield_of_fate/tick/check_debuff

#>デバフ付与
    data modify storage api: Argument.ID set value 355
    data modify storage api: Argument.FieldOverride.Amount set value -0.15d
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
