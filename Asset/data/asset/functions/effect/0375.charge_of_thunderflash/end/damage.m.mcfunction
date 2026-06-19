#> asset:effect/0375.charge_of_thunderflash/end/damage.m
#
#
#
# @within function asset:effect/0375.charge_of_thunderflash/end/attack

#
    $execute store result storage api: Argument.Damage double 0.1 run random value $(Min)..$(Max)
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=375.This] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
