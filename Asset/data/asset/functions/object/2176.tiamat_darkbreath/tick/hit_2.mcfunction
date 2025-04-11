#> asset:object/2176.tiamat_darkbreath/tick/hit_2
#
# Objectのtick時の処理
#
# @within asset:object/2176.tiamat_darkbreath/tick/

# ヒット判定
    # execute positioned ^1.5 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 2176.Hit
    # execute positioned ^-1.5 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 2176.Hit
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 5
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 4
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..10]"
    execute positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    tag @a[tag=DXYZ] add 2176.Hit
    tag @a[tag=DXYZ] remove DXYZ

# 演出
    particle dragon_breath ~ ~1 ~ 3 1 3 0 20 force
    particle cloud ~ ~1 ~ 3 1 3 0.2 30
    particle end_rod ~ ~1 ~ 3 1 3 0.2 10
