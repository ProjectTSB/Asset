#> asset:effect/0243.oblivious_snow/fullset/passive
# @within function asset:effect/0243.oblivious_snow/tick/

# 演出
    particle snowflake ~ ~4 ~ 1.8 0.25 1.8 0.0 9 normal @a[distance=..16]
    particle snowflake ~ ~0.3 ~ 1.5 0.1 1.5 0.1 2 normal @a[distance=..16]

# 周囲に鈍足を付与
    effect give @e[type=#lib:living,tag=Enemy,tag=!Enemy.Boss,distance=..3.5] slowness 1 0 true
