#> asset:effect/0406.ocean_grace/tick/
#
# Effectが付与されている間の処理
#
# @within function asset:effect/0406.ocean_grace/_/tick

# 存在感は薄いけど、ちょっとだけ演出
    execute if predicate lib:random_pass_per/10 run particle dust 0.302 0.722 1 0.6 ~ ~1.2 ~ 0.4 0.4 0.4 0 1 normal @a
