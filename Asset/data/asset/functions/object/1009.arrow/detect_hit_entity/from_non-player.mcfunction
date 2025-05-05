#> asset:object/1009.arrow/detect_hit_entity/from_non-player
#
#
#
# @within function asset:object/1009.arrow/detect_hit_entity/

execute positioned ~-0.2 ~-0.2 ~-0.2 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] run data modify storage asset:context IsHitEntity set value true
