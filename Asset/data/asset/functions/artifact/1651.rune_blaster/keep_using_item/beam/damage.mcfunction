#> asset:artifact/1651.rune_blaster/keep_using_item/beam/damage
#
#
#
# @within function asset:artifact/1651.rune_blaster/keep_using_item/beam/recursive

# ダメージを
    execute store result storage api: Argument.Damage double 0.1 run random value 500..600
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
