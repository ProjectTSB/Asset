#> asset:object/2082.storm_shadow/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2082/detect_hit_entity

# 判定
    execute positioned ~-1 ~-1 ~-1 if entity @p[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] run data modify storage asset:context IsHitEntity set value true
