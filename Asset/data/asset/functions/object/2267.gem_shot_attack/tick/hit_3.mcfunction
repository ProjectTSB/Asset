#> asset:object/2267.gem_shot_attack/tick/hit_3
#
# Objectのtick時の処理
#
# @within asset:object/2267.gem_shot_attack/tick/

# ヒット判定
    # execute positioned ^1.5 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 2267.Hit
    # execute positioned ^-1.5 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 2267.Hit
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 5
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 4
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..10]"
    execute positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
    tag @a[tag=DXYZ] add 2267.Hit
    tag @a[tag=DXYZ] remove DXYZ

# 演出
    particle explosion ~ ~1 ~ 3 1 3 0 20 force
    particle lava ~ ~1 ~ 3 1 3 0.2 10
