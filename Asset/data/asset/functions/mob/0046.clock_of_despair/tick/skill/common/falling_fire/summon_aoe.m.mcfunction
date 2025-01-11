#> asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m
# @input args
#   InterpolationTime: int
#   VisibleTime: int
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

tp 0-0-0-0-0 0.0 0.0 0.0 ~ 0

data modify storage api: Argument.ID set value 2113
data modify storage api: Argument.FieldOverride.RotationX set from entity 0-0-0-0-0 Rotation[0]
data modify storage api: Argument.FieldOverride.Color set value 16764108
$data modify storage api: Argument.FieldOverride.Interpolation set value $(InterpolationTime)
$data modify storage api: Argument.FieldOverride.Tick set value $(VisibleTime)
data modify storage api: Argument.FieldOverride.Scale set value [12f,24f]
execute positioned ^ ^ ^-12 run function api:object/summon


tp 0-0-0-0-0 0.0 0.0 0.0 ~180 0

data modify storage api: Argument.ID set value 2113
data modify storage api: Argument.FieldOverride.RotationX set from entity 0-0-0-0-0 Rotation[0]
data modify storage api: Argument.FieldOverride.Color set value 16764108
$data modify storage api: Argument.FieldOverride.Interpolation set value $(InterpolationTime)
$data modify storage api: Argument.FieldOverride.Tick set value $(VisibleTime)
data modify storage api: Argument.FieldOverride.Scale set value [12f,24f]
execute positioned ^ ^0.01 ^12 run function api:object/summon
