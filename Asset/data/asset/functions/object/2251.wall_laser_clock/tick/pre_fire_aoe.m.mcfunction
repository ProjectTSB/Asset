#> asset:object/2251.wall_laser_clock/tick/pre_fire_aoe.m
#
#
#
# @within function asset:object/2251.wall_laser_clock/tick/

data modify storage api: Argument.ID set value 2113
data modify storage api: Argument.FieldOverride.Color set value 16777215
$data modify storage api: Argument.FieldOverride.Interpolation set value $(InterpolationTime)
$data modify storage api: Argument.FieldOverride.Tick set value $(VisibleTime)
data modify storage api: Argument.FieldOverride.Scale set value [12f,40f]
execute positioned ~ ~-5.96 ~ rotated ~ 0 run function api:object/summon
