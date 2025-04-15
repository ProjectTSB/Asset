#> asset:effect/0300.aigis_vitae/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0300.aigis_vitae/_/tick

execute if predicate lib:random_pass_per/20 positioned ~ ~1 ~ run particle dust 1000000000 1000000000 1000000000 1 ~ ~ ~ 0.2 0.5 0.2 1 4 normal
