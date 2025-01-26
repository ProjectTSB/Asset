#> asset:mob/0027.skull_sniper/tick/attack/shot/detect_entity
# @within function asset:mob/0027.skull_sniper/tick/attack/shot/rec

execute positioned ~-0.25 ~-0.25 ~-0.25 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run data modify storage asset:temp Projectile.IsHitEntity set value true
