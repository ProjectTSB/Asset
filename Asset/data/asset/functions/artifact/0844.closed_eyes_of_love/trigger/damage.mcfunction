#> asset:artifact/0844.closed_eyes_of_love/trigger/damage
#
#
#
# @within function asset:artifact/0844.closed_eyes_of_love/trigger/3.main

# ダメージ
    data modify storage api: Argument.Damage set value 450.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute anchored eyes positioned ^ ^ ^ positioned ~-1 ~0.5 ~-1 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=1,dy=1,dz=1] run function api:damage/
    function api:damage/reset
