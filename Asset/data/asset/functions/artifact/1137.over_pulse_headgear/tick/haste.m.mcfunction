#> asset:artifact/1137.over_pulse_headgear/tick/haste.m
#
#
#
# @input args Level : int
# @within function asset:artifact/1137.over_pulse_headgear/tick/3.main

effect clear @s haste
$effect give @s haste 1 $(Level) true
