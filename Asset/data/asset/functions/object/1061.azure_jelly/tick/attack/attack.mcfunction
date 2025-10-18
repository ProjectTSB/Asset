#> asset:object/1061.azure_jelly/tick/attack/attack
#
#
#
# @within function asset:object/1061.azure_jelly/tick/attack/

# 演出
    execute rotated ~ 0 positioned ~ ~-0.3 ~ run function asset:object/1061.azure_jelly/tick/vfx/circle1
    execute rotated ~ 0 positioned ~ ~-0.3 ~ run function asset:object/1061.azure_jelly/tick/vfx/circle2

    data modify storage api: Argument.ID set value 1062
    execute positioned ~ ~-0.3 ~ run function api:object/summon

# 円柱Libを用いて判定する
    data modify storage lib: Argument.BoundingCylinder.Radius set value 4.5d
    data modify storage lib: Argument.BoundingCylinder.Height set value 10.0d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..7]"
    execute positioned ~ ~-5 ~ run function lib:bounding_cylinder/


# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @p[tag=1061.Owner] run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable,distance=..7] if function asset:object/1061.azure_jelly/tick/attack/check_block/ run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..7] remove BoundingCylinder

# AttackCD初期化
    data modify storage asset:context this.AttackCD set value 50
