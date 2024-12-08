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

# ヒット判定
    data modify storage lib: args.dx set value 3
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 45
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute positioned ^ ^-5 ^-45 run function lib:rotatable_dxyz/m with storage lib: args
    tag @a[tag=DXYZ] add 2111.Hit
    tag @a[tag=DXYZ] remove DXYZ
# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=2111.Hit] run function api:damage/
    function api:damage/reset

# 終了
    tag @a remove 2111.Hit
    kill @s
