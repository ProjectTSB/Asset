#> asset:effect/0338.jump_spring/tick/update_effect.m
#
#
#
# @input args Amplifier: int
# @within function asset:effect/0338.jump_spring/tick/

effect clear @s jump_boost
$effect give @s jump_boost 1 $(Amplifier) true
