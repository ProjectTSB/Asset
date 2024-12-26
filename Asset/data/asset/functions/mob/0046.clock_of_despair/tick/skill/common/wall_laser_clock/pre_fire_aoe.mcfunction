#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/pre_fire_aoe
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/tick

tp 0-0-0-0-0 0.0 0.0 0.0 ~ 0

data modify storage api: Argument.ID set value 2113
data modify storage api: Argument.FieldOverride.RotationX set from entity 0-0-0-0-0 Rotation[0]
data modify storage api: Argument.FieldOverride.Color set value 16777215
data modify storage api: Argument.FieldOverride.Interpolation set value 2
data modify storage api: Argument.FieldOverride.Tick set value 6
data modify storage api: Argument.FieldOverride.Scale set value [12f,40f]
execute positioned ~ ~-5.96 ~ run function api:object/summon
