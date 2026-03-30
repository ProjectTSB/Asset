#> asset:object/2269.gem_rocket_punch/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2269.gem_rocket_punch/tick/event_attack

# ヒット判定
    data modify storage lib: args.dx set value 5
    data modify storage lib: args.dy set value 5
    data modify storage lib: args.dz set value 5
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute positioned ^ ^ ^5 run function lib:rotatable_dxyz/m with storage lib: args

# 攻撃
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.Element
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ] run function asset:object/call.m {method:"check_duplicate"}
    execute as @a[tag=DXYZ] if predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run function api:damage/
    function api:damage/reset
    tag @a remove DXYZ
