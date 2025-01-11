#> asset:object/2087.patriot/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2087/detect_hit_entity

# 判定
    execute positioned ~-2 ~-2 ~-2 if entity @e[tag=Enemy.Boss,dx=3,dy=3,dz=3] run data modify storage asset:context IsHitEntity set value true
