#> asset:effect/0259.virtual_image/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0259.virtual_image/_/tick

# 演出
    execute if predicate lib:random_pass_per/50 run particle item glass ~ ~1.2 ~ 0.4 0.4 0.4 0 1 normal @a
