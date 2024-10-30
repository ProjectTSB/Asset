#> asset:object/2031.giant_pumpkin/hit_entity/beginning_hit
#
# 回転し始めのヒット判定
#
# @within function asset:object/2031.giant_pumpkin/hit_entity/

# 回転するxyzLibを使ってダメージ判定を行う
    data modify storage lib: args.dx set value 1.8
    data modify storage lib: args.dy set value 1.8
    data modify storage lib: args.dz set value 1.8
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..5]"
    function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set value 8
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ,distance=..5] run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=DXYZ,distance=..5] remove DXYZ
