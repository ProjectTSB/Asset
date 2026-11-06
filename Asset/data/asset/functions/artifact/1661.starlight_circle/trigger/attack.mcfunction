#> asset:artifact/1661.starlight_circle/trigger/attack
#
#
#
# @within function asset:artifact/1661.starlight_circle/trigger/3.main

# ダメージ範囲
    data modify storage lib: Argument.BoundingCylinder.Radius set value 5.0d
    data modify storage lib: Argument.BoundingCylinder.Height set value 3.25d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10]"
    execute positioned ~ ~-2.25 ~ run function lib:bounding_cylinder/

# ダメージ
    data modify storage api: Argument.Damage set value 200d
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute positioned ~ ~-0.25 ~ as @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..15] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..15] remove BoundingCylinder
