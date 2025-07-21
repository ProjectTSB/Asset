#> asset:effect/0236.solitariness/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0236.solitariness/_/tick

# フルセット効果
    execute if data storage asset:context {Stack:4} run function asset:effect/0236.solitariness/fullset/passive
