#> asset:object/2251.wall_laser_clock/tick/fire
#
#
#
# @within function asset:object/2251.wall_laser_clock/tick/

# VFX
    function asset:object/2251.wall_laser_clock/tick/vfx/fire/

# ヒット対象を探す
    data modify storage lib: args.dx set value 6.3
    data modify storage lib: args.dy set value 6.3
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..40]"
    execute positioned ^ ^ ^20 run function lib:rotatable_dxyz/m with storage lib: args

# パラメータ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの広範囲光線により跡形も残らず蒸発した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ] at @s run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=DXYZ] remove DXYZ
    data remove storage lib: args
    scoreboard players reset $LaserDistance Temporary
    scoreboard players reset $VFXPattern Temporary
