#> asset:object/1145.throwing_ark/kill/
#
#
#
# @within function asset:object/alias/1145/kill

# 演出
    playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 1
    particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 1 25 force @a[distance=..32]
    particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 1 force @a[distance=..32]

# キル
    kill @s
