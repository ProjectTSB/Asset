#> asset:artifact/0125.storm_bow/trigger/random_rotate/tp.m
#
#
#
# @input args
#   Mode: string
#   Yaw: int
#   Pitch: int
# @within function asset:artifact/0125.storm_bow/trigger/random_rotate/m

$tp @s ~ ~ ~ $(Mode)$(Yaw) $(Mode)$(Pitch)
