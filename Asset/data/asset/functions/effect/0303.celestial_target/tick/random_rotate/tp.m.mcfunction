#> asset:effect/0303.celestial_target/tick/random_rotate/tp.m
#
#
#
# @input args
#   Mode: string
#   Yaw: int
#   Pitch: int
# @within function asset:effect/0303.celestial_target/tick/random_rotate/m

$tp @s ~ ~ ~ $(Mode)$(Yaw) $(Mode)$(Pitch)
