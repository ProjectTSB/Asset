#> asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m
# @input args
#   InterpolationTime: int
#   VisibleTime: int
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

data modify storage api: Argument.ID set value 2113
data modify storage api: Argument.FieldOverride.Color set value 16764108
$data modify storage api: Argument.FieldOverride.Interpolation set value $(InterpolationTime)
$data modify storage api: Argument.FieldOverride.Tick set value $(VisibleTime)
data modify storage api: Argument.FieldOverride.Scale set value [12f,24f]
execute positioned ^ ^ ^-12 rotated ~ 0 run function api:object/summon


data modify storage api: Argument.ID set value 2113
data modify storage api: Argument.FieldOverride.Color set value 16764108
$data modify storage api: Argument.FieldOverride.Interpolation set value $(InterpolationTime)
$data modify storage api: Argument.FieldOverride.Tick set value $(VisibleTime)
data modify storage api: Argument.FieldOverride.Scale set value [12f,24f]
execute positioned ^ ^0.01 ^12 rotated ~180 0 run function api:object/summon
