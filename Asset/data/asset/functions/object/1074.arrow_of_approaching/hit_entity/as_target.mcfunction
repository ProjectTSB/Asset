#> asset:object/1074.arrow_of_approaching/hit_entity/as_target
#
#
#
# @within function asset:object/1074.arrow_of_approaching/hit_entity/

# VFX
    execute positioned as @s rotated as @a[tag=1074.Player] rotated ~ 0 positioned ^ ^ ^-2 run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 2 50 force @a[distance=..150]
    execute at @a[tag=1074.Player] run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 2 50 force @a[distance=..150]
# SE
    execute positioned as @s rotated as @a[tag=1074.Player] rotated ~ 0 positioned ^ ^ ^-2 run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
    execute at @a[tag=1074.Player] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1

# TP
    execute positioned as @s rotated as @a[tag=1074.Player] rotated ~ 0 run tp @a[tag=1074.Player] ^ ^ ^-2

# リセット
    tag @s remove 1074.Target
