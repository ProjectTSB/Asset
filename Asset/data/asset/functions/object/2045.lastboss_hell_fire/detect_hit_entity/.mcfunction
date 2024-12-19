#> asset:object/2045.lastboss_hell_fire/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2045/detect_hit_entity

# 判定
    execute positioned ~-1.5 ~-1.5 ~-1.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run data modify storage asset:context IsHitEntity set value true
