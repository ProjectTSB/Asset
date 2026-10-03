#> asset:artifact/1632.photon_burst/trigger/motion
#
#
#
# @within function asset:artifact/1632.photon_burst/trigger/attack/

# player_motion
    data modify storage lib: Argument.VectorMagnitude set value 1.1d
    execute rotated ~ ~-10 run function lib:motion/looking
