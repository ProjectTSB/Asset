#> asset:effect/0236.solitariness/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0236.solitariness/_/re-given

# フルセットでないなら解除
    execute unless data storage asset:context {Stack:4} run tag @s remove 236.Loneliness
    execute unless data storage asset:context {Stack:4} run function asset:effect/0236.solitariness/fullset/modifier/remove
