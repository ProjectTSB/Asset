#> asset:object/1153.flame_butterfly/tick/vfx
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/

# 演出
    execute if predicate lib:random_pass_per/30 run particle dust 1 0.4 0 0.7 ~ ~ ~ 0.3 0.3 0.3 0 1 normal @a
    execute if predicate lib:random_pass_per/8 run particle flame ~ ~ ~ 0.3 0.3 0.3 0 1 normal @a
    execute if predicate lib:random_pass_per/5 run particle dripping_lava ~ ~ ~ 0.3 0 0.3 0 1 normal @a
