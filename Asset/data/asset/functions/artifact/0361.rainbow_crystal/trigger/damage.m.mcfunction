#> asset:artifact/0361.rainbow_crystal/trigger/damage.m
#
#
#
# @within function asset:artifact/0361.rainbow_crystal/trigger/3.main

    data modify storage api: Argument.Damage set value 210f
    $data modify storage api: Argument.AttackType set value $(AttackType)
    $data modify storage api: Argument.ElementType set value $(ElementType)
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..30] run function api:damage/
    function api:damage/reset
