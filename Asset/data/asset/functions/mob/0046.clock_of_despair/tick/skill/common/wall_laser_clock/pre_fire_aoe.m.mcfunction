#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/pre_fire_aoe.m
# @input args
#   InterpolationTime: int
#   VisibleTime: int
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/tick

data modify storage api: Argument.ID set value 2113
data modify storage api: Argument.FieldOverride.Color set value 16777215
$data modify storage api: Argument.FieldOverride.Interpolation set value $(InterpolationTime)
$data modify storage api: Argument.FieldOverride.Tick set value $(VisibleTime)
data modify storage api: Argument.FieldOverride.Scale set value [12f,40f]
execute positioned ~ ~-5.96 ~ rotated ~ 0 run function api:object/summon
