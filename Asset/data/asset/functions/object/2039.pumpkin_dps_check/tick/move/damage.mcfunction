#> asset:object/2039.pumpkin_dps_check/tick/move/damage
#
#
#
# @within function asset:object/2039.pumpkin_dps_check/tick/move/

# 回転するxyzLibを使ってヒット判定を行う
    data modify storage lib: args.dx set value 16
    data modify storage lib: args.dy set value 16
    data modify storage lib: args.dz set value 16
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..28]"
    execute positioned ~ ~16 ~ run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの超巨大カボチャに轢かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ,distance=..28] run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=DXYZ,distance=..28] remove DXYZ
