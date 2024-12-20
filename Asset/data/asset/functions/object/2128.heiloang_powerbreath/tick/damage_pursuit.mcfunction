#> asset:object/2128.heiloang_powerbreath/tick/damage_pursuit
#
# Objectのtick時の処理
#
# @within asset:object/2128.heiloang_powerbreath/tick/

# ヒット判定
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute rotated ~ ~ positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute rotated ~90 ~ positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute rotated ~180 ~ positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute rotated ~270 ~ positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute rotated ~45 ~ positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute rotated ~135 ~ positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute rotated ~225 ~ positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute rotated ~315 ~ positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    tag @a[tag=DXYZ] add 2128.Hit
    tag @a[tag=DXYZ] remove DXYZ

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.DamagePursuit
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=2128.Hit] run function api:damage/
    function api:damage/reset
    tag @a remove 2128.Hit
