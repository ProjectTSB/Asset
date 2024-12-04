#> asset:effect/0247.great_demon_armor/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0247.great_demon_armor/_/tick

# 演出
    execute if data storage asset:context {Stack:4} run function asset:effect/0247.great_demon_armor/fullset/passive
