#> asset:object/2042.lastboss_fireball/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2042/detect_hit_entity

execute positioned ~-1 ~-1 ~-1 if entity @a[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] run data modify storage asset:context IsHitEntity set value true
