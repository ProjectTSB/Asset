#> asset:effect/0262.catastrophe/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0262.catastrophe/_/tick

# 演出
    execute if data storage asset:context {Stack:4} run function asset:effect/0262.catastrophe/fullset/passive
