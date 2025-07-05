#> asset:object/2251.wall_laser_clock/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/2251.wall_laser_clock/summon/

    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
