#> asset:effect/0608.sinking/modifier/add_slowness.m
# @input args
#   SlownessAmount: double
# @within function asset:effect/0608.sinking/modifier/add

$attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-026000000000 "608.Speed" $(SlownessAmount) multiply
