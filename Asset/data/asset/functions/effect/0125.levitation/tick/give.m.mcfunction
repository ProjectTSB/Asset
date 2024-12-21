#> asset:effect/0125.levitation/tick/give.m
#
# マクロで付与する
#
# @input args:
#   Stack : int
# @within function asset:effect/0125.levitation/tick/

# 付与
    $effect give @s levitation infinite $(Stack) true
