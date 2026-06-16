#> asset:mob/0464.drain_plant/tick/attack/attack
#
#
#
# @within function asset:mob/0464.drain_plant/tick/attack/

# 演出
    particle dust 0.867 0.431 0.298 1.4 ~ ~2 ~ 3.5 1.5 3.5 0 80 normal @a
    playsound entity.squid.squirt hostile @a ~ ~ ~ 1 0.6

# 攻撃範囲
    data modify storage lib: Argument.BoundingCylinder.Radius set value 4d
    data modify storage lib: Argument.BoundingCylinder.Height set value 6d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..10]"
    execute positioned ~ ~-2 ~ run function lib:bounding_cylinder/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.Metadata set from storage asset:context this.Metadata
    function api:damage/modifier
    execute as @a[tag=BoundingCylinder,distance=..10] run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=BoundingCylinder,distance=..10] remove BoundingCylinder
