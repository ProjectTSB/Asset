#> asset:effect/0026.mining_fatigue/tick/m
#
# マクロで付与する
#
# @input args:
#   Stack : int
# @within function asset:effect/0026.mining_fatigue/tick/

$effect give @s mining_fatigue 1 $(Stack) true
