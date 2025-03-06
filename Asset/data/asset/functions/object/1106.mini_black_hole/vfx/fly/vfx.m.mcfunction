#> asset:object/1106.mini_black_hole/vfx/fly/vfx.m
#
#
#
# @input args
#   Yaw : float
#   Pitch : float
# @within asset:object/1106.mini_black_hole/vfx/fly/

$execute rotated ~$(Yaw) ~$(Pitch) run function asset:object/1106.mini_black_hole/vfx/fly/particle
