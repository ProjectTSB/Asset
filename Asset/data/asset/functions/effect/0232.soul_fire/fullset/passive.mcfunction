#> asset:effect/0232.soul_fire/fullset/passive
# @within function asset:effect/0232.soul_fire/tick/

# 演出
    execute if predicate lib:random_pass_per/25 run particle soul ~ ~1.2 ~ 2 0.5 2 0.03 1 normal @a
    execute if predicate lib:random_pass_per/25 run particle soul_fire_flame ~ ~1.2 ~ 2 0.5 2 0.03 1 normal @a
