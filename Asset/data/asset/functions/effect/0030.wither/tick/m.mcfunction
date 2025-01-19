#> asset:effect/0030.wither/tick/m
#
# マクロで付与する
#
# @input args:
#   Stack : int
# @within function asset:effect/0030.wither/tick/

$effect give @s wither 1 $(Stack) true
