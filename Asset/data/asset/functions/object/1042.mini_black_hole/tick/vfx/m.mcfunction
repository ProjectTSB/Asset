#> asset:object/1042.mini_black_hole/tick/vfx/m
#
# @input args:
#   Yaw : float
#   Pitch : float
# @within function asset:object/1042.mini_black_hole/tick/

#
    $execute rotated $(Yaw) $(Pitch) run function asset:object/1042.mini_black_hole/tick/vfx/particle
