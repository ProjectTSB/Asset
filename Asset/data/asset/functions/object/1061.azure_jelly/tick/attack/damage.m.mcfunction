#> asset:object/1061.azure_jelly/tick/attack/damage.m
#
#
#
# @within function asset:object/1061.azure_jelly/tick/attack/attack

    $execute store result storage api: Argument.Damage int 1 run random value $(Min)..$(Max)
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @p[tag=1061.Owner] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
