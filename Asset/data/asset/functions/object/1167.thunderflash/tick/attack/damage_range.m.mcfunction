#> asset:object/1167.thunderflash/tick/attack/damage_range.m
#
# @input args:
#   Min : int
#   Max : int
# @within function asset:object/1167.thunderflash/tick/attack/check

# ダメージ
    $execute store result storage api: Argument.Damage double 0.1 run random value $(Min)..$(Max)
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=Owner] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
