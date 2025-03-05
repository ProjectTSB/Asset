#> asset:effect/0280.awaking_power/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0280.awaking_power/_/tick

# vfx
    execute if predicate lib:random_pass_per/40 run particle minecraft:entity_effect ~ ~1.2 ~ 0.4 0.4 0.4 1 1
