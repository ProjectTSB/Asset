#> asset:mob/0027.skull_sniper/tick/attack/shot/detect_block
# @within function asset:mob/0027.skull_sniper/tick/attack/shot/rec

execute unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:temp Projectile.IsHitBlock set value true
