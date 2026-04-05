#> asset:object/1057.giant_pumpkin/detect_hit_entity/check
#
# ヒット判定
#
# @within function asset:object/1057.giant_pumpkin/detect_hit_entity/

# 回転するxyzLibを使ってヒット判定を行う
    data modify storage lib: args.dx set value 1.8
    data modify storage lib: args.dy set value 1.8
    data modify storage lib: args.dz set value 1.8
    data modify storage lib: args.selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5]"
    function lib:rotatable_dxyz/m with storage lib: args

# 高速回転状態なら多重ヒット防止処理を行う
    execute if entity @s[tag=2031.HighSpeedSpinning] as @e[type=#lib:living,tag=DXYZ,distance=..5] run function asset:object/1057.giant_pumpkin/detect_hit_entity/check_multiple_hit/

# ヒット判定
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=DXYZ,tag=!Uninterferable,distance=..5] run data modify storage asset:context IsHitEntity set value true
