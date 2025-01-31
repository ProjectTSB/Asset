#> asset:effect/0240.bless_of_deep_sea_coral/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0240.bless_of_deep_sea_coral/_/tick

# 演出
    execute if data storage asset:context {Stack:4} run function asset:effect/0240.bless_of_deep_sea_coral/fullset/passive
