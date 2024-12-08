#> asset:object/2111.heiloang_thunder/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2111.heiloang_thunder/tick/

# 演出
    tp @s ~ ~ ~ ~ 0
    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [5.6569f,0.0000f,-5.6569f,0.0000f,5.6569f,0.0000f,5.6569f,0.0000f,0.0000f,-20.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "fixed"
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ~ ~ ~ rotated ~ ~ run function api:object/summon
    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [-5.6569f,0.0000f,-5.6569f,0.0000f,5.6569f,0.0000f,-5.6569f,0.0000f,0.0000f,-20.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "fixed"
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ~ ~ ~ run function api:object/summon
    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [-5.6569f,0.0000f,5.6569f,0.0000f,-5.6569f,0.0000f,-5.6569f,0.0000f,0.0000f,-20.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "fixed"
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ~ ~ ~ run function api:object/summon
    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [5.6569f,0.0000f,5.6569f,0.0000f,-5.6569f,0.0000f,5.6569f,0.0000f,0.0000f,-20.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "fixed"
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ~ ~ ~ run function api:object/summon

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute positioned ^-3 ^-5 ^-40 as @a[tag=!PlayerShouldInvulnerable,dx=6,dy=10,dz=40] run function api:damage/
    function api:damage/reset

# 終了
    kill @s
