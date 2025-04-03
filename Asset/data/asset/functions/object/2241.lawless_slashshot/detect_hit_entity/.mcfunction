#> asset:object/2241.lawless_slashshot/detect_hit_entity/
#
#
#
# @within function asset:object/alias/2241/detect_hit_entity

# プレイヤーへの当たり判定。かなりデカい。
    execute positioned ~-1 ~-1 ~-1 if entity @a[tag=!PlayerShouldInvulnerable,dx=0.75,dy=0.75,dz=0.75] run data modify storage asset:context IsHitEntity set value true
