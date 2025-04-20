#> asset:effect/0243.oblivious_snow/fullset/passive
# @within function asset:effect/0243.oblivious_snow/tick/

# 演出
    execute if predicate lib:random_pass_per/20 run particle snowflake ~ ~4 ~ 1.8 0.25 1.8 0.0 2 normal @a[distance=..16]
    particle snowflake ~ ~0.3 ~ 0.5 0.1 0.5 0.05 1 normal @a[distance=..16]

# 周囲に鈍足を付与
    effect give @e[type=#lib:living,tag=Enemy,tag=!Enemy.Boss,distance=..3.5] slowness 1 0 true
