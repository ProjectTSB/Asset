#> asset:object/2021.hydro_storm/tick/direction/announce_line
#
# 予告線
#
# @within function asset:object/2021.hydro_storm/tick/

data modify storage api: Argument.ID set value 2113
data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
data modify storage api: Argument.FieldOverride.Color set value 1710847
data modify storage api: Argument.FieldOverride.Scale set value [6f,60f]
data modify storage api: Argument.FieldOverride.Interpolation set value 10
data modify storage api: Argument.FieldOverride.Tick set value 10
execute positioned ~ ~-1.25 ~ run function api:object/summon
