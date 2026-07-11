#> asset:effect/0355.heart_gap/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0355.heart_gap/_/tick

# 演出
    # execute if predicate lib:random_pass_per/10 run 
    particle block redstone_block ~ ~0.8 ~ 0.4 0.6 0.4 0 1 normal @a
