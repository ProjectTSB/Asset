#> asset:object/2207.eclael_slash_line/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2207.eclael_slash_line/tick/

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 0.4 0.8
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 0.4 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 0.4 0.9
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.1 0.7 0.1
    playsound entity.guardian.attack hostile @a ~ ~ ~ 1 1.8

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 2.5
    data modify storage lib: args.dy set value 5
    data modify storage lib: args.dz set value 10
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..30]"
    function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 終了
    tag @a[tag=DXYZ] remove DXYZ
