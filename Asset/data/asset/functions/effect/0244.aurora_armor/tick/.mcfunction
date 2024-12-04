#> asset:effect/0244.aurora_armor/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0244.aurora_armor/_/tick

# 演出
    execute if data storage asset:context {Stack:4} run function asset:effect/0244.aurora_armor/fullset/passive
