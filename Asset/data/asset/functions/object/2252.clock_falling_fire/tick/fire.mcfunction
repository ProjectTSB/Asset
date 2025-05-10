#> asset:object/2252.clock_falling_fire/tick/fire
#
#
#
# @within function asset:object/2252.clock_falling_fire/tick/

# VFX
    execute positioned ~ ~7 ~ run function asset:object/2252.clock_falling_fire/tick/vfx

# 上から音を鳴らす
    playsound entity.blaze.shoot hostile @a ~ ~8 ~ 0.8 0.8

# ヒット対象を探す
    data modify storage lib: args.dx set value 6.3
    data modify storage lib: args.dy set value 6.3
    data modify storage lib: args.dz set value 12.3
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..40]"
    function lib:rotatable_dxyz/m with storage lib: args

# パラメータ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの魔炎により灰一つ残さず焼き尽くされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ] at @s run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=DXYZ] remove DXYZ
    data remove storage lib: args
