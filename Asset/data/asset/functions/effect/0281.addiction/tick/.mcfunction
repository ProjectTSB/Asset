#> asset:effect/0281.addiction/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0281.addiction/_/tick

# vfx
    execute if predicate lib:random_pass_per/20 run particle minecraft:entity_effect ~ ~1.2 ~ 0.4 0.4 0.4 0 1

# 空腹
    effect give @s hunger 1 2 true
