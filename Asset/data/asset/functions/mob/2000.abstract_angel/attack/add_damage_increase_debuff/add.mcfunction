#> asset:mob/2000.abstract_angel/attack/add_damage_increase_debuff/add
#
#
#
# @within function asset:mob/2000.abstract_angel/attack/add_damage_increase_debuff/

data modify storage api: Argument.ID set value 57
data modify storage api: Argument.Duration set value 600
data modify storage api: Argument.StackOperation set value "add"
function api:entity/mob/effect/give
function api:entity/mob/effect/reset
