#> asset:object/1057.giant_pumpkin/detect_hit_entity/check
#
#
#
# @within function asset:object/1057.giant_pumpkin/detect_hit_entity/

# 回転するxyzLibを使ってヒット判定を行う
    data modify storage lib: args.dx set value 1.8
    data modify storage lib: args.dy set value 1.8
    data modify storage lib: args.dz set value 1.8
    data modify storage lib: args.selector set value "@e[type=#lib:living,tag=Enemy,distance=..5]"
    function lib:rotatable_dxyz/m with storage lib: args

#

# ヒット判定
    execute if entity @p[tag=DXYZ] run data modify storage asset:context IsHitEntity set value true

# リセット
    tag @a[tag=DXYZ,distance=..5] remove DXYZ
