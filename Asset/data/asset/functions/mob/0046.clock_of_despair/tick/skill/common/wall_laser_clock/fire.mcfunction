#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/fire
#
#
#
# @within function
#   asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/tick
#   asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/fire

function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/

# ヒット対象を探す
    data modify storage lib: args.dx set value 6.3
    data modify storage lib: args.dy set value 6.3
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..40]"
    execute positioned ^ ^ ^20 run function lib:rotatable_dxyz/m with storage lib: args

# パラメータ設定
    data modify storage api: Argument.Damage set value 50
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの広範囲光線により跡形も残らず蒸発した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正 (厳密な紐付けではない)
    execute as @e[type=zombie,scores={MobID=46},distance=..14,limit=1] run function api:damage/modifier
# 与える
    execute as @a[tag=DXYZ] at @s run function api:damage/

# リセット
    function api:damage/reset
    tag @a[tag=DXYZ] remove DXYZ
    data remove storage lib: args
    scoreboard players reset $laserDistance Temporary
    scoreboard players reset $VFXPattern Temporary
