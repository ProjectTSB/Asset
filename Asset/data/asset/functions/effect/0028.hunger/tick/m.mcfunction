#> asset:effect/0028.hunger/tick/m
#
# マクロで付与する
#
# @input args:
#   Stack : int
# @within function asset:effect/0028.hunger/tick/

$effect give @s hunger 1 $(Stack) true
