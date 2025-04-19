#> asset:object/2180.tiamat_pillar/tick/attack_1
#
# Objectのtick時の処理
#
# @within asset:object/2180.tiamat_pillar/tick/kill

# ダメージ
    data modify storage api: Argument.Damage set value 65.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..30] run function api:damage/
    function api:damage/reset

# 演出
    summon lightning_bolt ~ ~100 ~
    execute positioned ~ ~ ~ run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 2 0.7
    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [48.0000f,0.0000f,0.0000f,0.0000f,0.0000f,48.0000f,0.0000f,-3.6250f,0.0000f,0.0000f,48.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "vertical"
    data modify storage api: Argument.FieldOverride.OverrideSubScale set value [32f, 32f, 32f]
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ~ ~ ~ rotated ~ ~ run function api:object/summon
    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [24.0000f,0.0000f,0.0000f,0.0000f,0.0000f,24.0000f,0.0000f,-3.6250f,0.0000f,0.0000f,24.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "vertical"
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute rotated ~ ~ positioned ^ ^ ^23 run function api:object/summon
    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [24.0000f,0.0000f,0.0000f,0.0000f,0.0000f,24.0000f,0.0000f,-3.6250f,0.0000f,0.0000f,24.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "vertical"
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute rotated ~ ~72 positioned ^ ^ ^23 run function api:object/summon
    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [24.0000f,0.0000f,0.0000f,0.0000f,0.0000f,24.0000f,0.0000f,-3.6250f,0.0000f,0.0000f,24.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "vertical"
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute rotated ~ ~144 positioned ^ ^ ^23 run function api:object/summon
    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [24.0000f,0.0000f,0.0000f,0.0000f,0.0000f,24.0000f,0.0000f,-3.6250f,0.0000f,0.0000f,24.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "vertical"
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute rotated ~ ~216 positioned ^ ^ ^23 run function api:object/summon
    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [24.0000f,0.0000f,0.0000f,0.0000f,0.0000f,24.0000f,0.0000f,-3.6250f,0.0000f,0.0000f,24.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "vertical"
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute rotated ~ ~288 positioned ^ ^ ^23 run function api:object/summon
