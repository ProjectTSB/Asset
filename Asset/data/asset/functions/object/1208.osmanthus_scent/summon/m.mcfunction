#> asset:object/1208.osmanthus_scent/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1208.osmanthus_scent/summon/

$summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],teleport_duration:1}
