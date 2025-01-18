#> asset:object/2129.heiloang_plamet_pursuit/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2129.heiloang_plamet_pursuit/tick/

# ダメージ
    data modify storage lib: args.dx set value 2.5
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 3
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ,tag=!PlayerShouldInvulnerable] run function api:damage/
    function api:damage/reset
    tag @a[tag=DXYZ] remove DXYZ

# 演出
    playsound entity.wither.break_block hostile @a ~ ~ ~ 0.5 0.8
    particle block stone ~ ~1 ~ 2 1 2 0 50
    particle explosion ~ ~1 ~ 2 1 2 0 20

# 終了
    kill @s
