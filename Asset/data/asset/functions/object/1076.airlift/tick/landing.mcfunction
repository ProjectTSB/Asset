#> asset:object/1076.airlift/tick/landing
#
# 
#
# @within function asset:object/1076.airlift/tick/

# 移動
    tp @s ~ ~ ~ ~ ~0.25
    execute rotated ~ 0 run tp @s ^ ^ ^0.1

# vfx
# particle
    particle minecraft:dust 0.9 0.9 0.9 0.3 ^1.5 ^0.35 ^ 0 0 0 0 1
    particle minecraft:dust 0.9 0.9 0.9 0.3 ^-1.5 ^0.35 ^ 0 0 0 0 1
    particle minecraft:dust 0.3 0.3 0.3 0.3 ^0.33 ^0.05 ^-0.1 0 0 0 0 1
    particle minecraft:dust 0.3 0.3 0.3 0.3 ^-0.33 ^0.05 ^-0.1 0 0 0 0 1
