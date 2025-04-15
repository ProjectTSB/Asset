#> asset:artifact/1207.quadrainbow_icequality/trigger/attack
#
# 
#
# @within function asset:artifact/1207.quadrainbow_icequality/trigger/3.main

# damage
    data modify storage api: Argument.Damage set value 220f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# vfx
    execute anchored eyes positioned ^ ^ ^ facing entity @p[tag=this] eyes positioned ^ ^ ^1 run function asset:artifact/1207.quadrainbow_icequality/trigger/vfx
