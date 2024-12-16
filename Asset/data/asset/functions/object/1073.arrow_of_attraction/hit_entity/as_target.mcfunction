#> asset:object/1073.arrow_of_attraction/hit_entity/as_target
#
#
#
# @within function asset:object/1073.arrow_of_attraction/hit_entity/

# VFX
    particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 2 50 force @a[distance=..150]
    execute at @a[tag=1073.Player] rotated ~ 0 positioned ^ ^ ^2 run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 2 50 force @a[distance=..150]
# SE
    playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
    execute at @a[tag=1073.Player] rotated ~ 0 positioned ^ ^ ^2 run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1

# TP
    execute at @a[tag=1073.Player] rotated ~ 0 run tp @s ^ ^ ^2

# リセット
    tag @s remove 1073.Target
