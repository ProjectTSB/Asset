#> asset:object/2155.haruclaire_icelaser/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2155.haruclaire_icelaser/tick/

    # 旧
        # [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYARgAwBsAhgCwDsRAxgLQDMAnGUa3WQCY6rGuyIAzVoMrimAVipUG4sLgw0AtgmSAt3wAEARlVgYNAE6aAzknDMA9ngwQkAubnFm7Gm2ABuNFDxtcAAPJApcKHCAX2jcCDsff0DgsDDECLAoxHYKWNw7cXFLOGcM3DI4AC80ODNw3DRLACFq2rMAUQBHPACUKABlU2Y4EkRxAJLYgF0gA_3
        # 線 1
            # execute positioned ^0 ^ ^0 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^1.25 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^2.5 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^3.75 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^5 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^6.25 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^7.5 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^8.75 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^10 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^11.25 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^12.5 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^13.75 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^15 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^16.25 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^17.5 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^18.75 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^20 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^21.25 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^22.5 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^23.75 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^25 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^26.25 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^27.5 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^28.75 run function asset:object/2155.haruclaire_icelaser/tick/check_hit
            # execute positioned ^0 ^ ^30 run function asset:object/2155.haruclaire_icelaser/tick/check_hit

# 一定間隔で攻撃
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $7 Const
    execute unless score $Interval Temporary matches 0 run return run scoreboard players reset $Interval Temporary

# ヒット判定
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 2
    data modify storage lib: args.dz set value 35
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    tag @a[tag=DXYZ] add 2155.Hit
    tag @a[tag=DXYZ] remove DXYZ

# 演出
    playsound block.beacon.ambient hostile @a ~ ~ ~ 2 1
    particle flash ~ ~ ~ 0 0 0 0 1
    particle block ice ~ ~ ~ 0.2 0.2 0.2 0 5
    particle dust 1 1000000000 1000000000 3 ^ ^ ^ 0.5 0.5 0.5 1 10 force @a

# 演出
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYARgAwBsAhgCwDsRAxgLQDMAnGUa3WQCY6rGuyIAzVoMrimAVipUG4sLgw0AtgmSAt3wAEARlVgYNAE6aAzknDMA9ngwQkAubnFm7Gm2ABuNFDxtcAAPJApcKHCAX2jcCDsff0DgsDDECLAoxHYKWNw7cXFLOGcM3DI4AC80ODNw3DRLACFq2rMAUQBHPACUKABlU2Y4EkRxAJLYgF0gA_3
# 線 1
    execute positioned ^0 ^ ^0 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^1.25 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^2.5 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^3.75 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^5 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^6.25 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^7.5 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^8.75 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^10 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^11.25 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^12.5 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^13.75 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^15 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^16.25 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^17.5 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^18.75 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^20 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^21.25 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^22.5 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^23.75 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^25 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^26.25 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^27.5 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^28.75 run function asset:object/2155.haruclaire_icelaser/tick/particle
    execute positioned ^0 ^ ^30 run function asset:object/2155.haruclaire_icelaser/tick/particle

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは つめたいひかりに つらぬかれた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=2155.Hit,tag=!PlayerShouldInvulnerable] run function api:damage/
    function api:damage/reset

# 終了
    tag @a[tag=2155.Hit] remove 2155.Hit
    scoreboard players reset $Interval Temporary
