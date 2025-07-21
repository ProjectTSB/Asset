#> asset:artifact/1258.blade_of_dawn/trigger/damage
#
#
#
# @within function asset:artifact/1258.blade_of_dawn/trigger/3.main

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 135..235
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
