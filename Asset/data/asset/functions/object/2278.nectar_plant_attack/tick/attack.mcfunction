#> asset:object/2278.nectar_plant_attack/tick/attack
#
#
#
# @within function asset:object/2278.nectar_plant_attack/tick/

# 演出用Object召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.8f,20f,0.8f],Color:16732083,DisappearInterpolation:2,LifeTime:12}
    execute positioned ~ ~19 ~ rotated ~ 90 run function api:object/summon

# 演出
    particle dust 1 0.46 0.87 1.5 ~ ~12 ~ 0.3 10 0.3 0 60 normal @a
    particle dust 1 0.46 0.87 1 ~ ~2.5 ~ 4 2 4 0 60 normal @a
    playsound entity.breeze.hurt hostile @a ~ ~ ~ 1 1
    #playsound entity.warden.death hostile @a ~ ~ ~ 1 1.6
    playsound minecraft:entity.squid.squirt player @a ~ ~ ~ 1 0.75

# 攻撃範囲
    data modify storage lib: Argument.BoundingCylinder.Radius set value 4d
    data modify storage lib: Argument.BoundingCylinder.Height set value 4d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living,tag=!Uninterferable,distance=..6]"
    execute positioned ~ ~-0.25 ~ run function lib:bounding_cylinder/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.Metadata set from storage asset:context this.Metadata
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=BoundingCylinder,tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
    function api:damage/reset

# 回復
    data modify storage api: Argument.Heal set from storage asset:context this.Heal
    function api:heal/modifier
    execute as @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..6] run function api:heal/
    function api:heal/reset

# リセット
    tag @e[type=#lib:living,tag=BoundingCylinder,distance=..6] remove BoundingCylinder

# 消滅
    kill @s
