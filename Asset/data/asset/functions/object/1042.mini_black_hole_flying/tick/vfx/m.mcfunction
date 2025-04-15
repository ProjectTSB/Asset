#> asset:object/1042.mini_black_hole_flying/tick/vfx/m
#
# @input args:
#   Yaw : float
#   Pitch : float
# @within function asset:object/1042.mini_black_hole_flying/tick/

#
    $execute rotated $(Yaw) $(Pitch) run function asset:object/1042.mini_black_hole_flying/tick/vfx/particle
