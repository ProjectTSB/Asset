#> asset:object/1083.soulfire_burst_smallshot/recursive/
#
#
#
# @within function asset:object/alias/1083/recursive

# 演出
    particle minecraft:crit ~ ~ ~ 0 0 0 0.05 1 force @a[distance=..32]
    particle minecraft:dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
    execute if predicate lib:random_pass_per/25 run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
