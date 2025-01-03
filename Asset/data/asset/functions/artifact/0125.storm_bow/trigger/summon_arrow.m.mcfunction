#> asset:artifact/0125.storm_bow/trigger/summon_arrow.m
#
#
#
# @within function asset:artifact/0125.storm_bow/trigger/3.main

particle minecraft:cloud ~ ~ ~ 0.1 0 0.1 0.01 2

execute facing entity @s eyes as 0-0-0-0-0 positioned as @s run function asset:artifact/0125.storm_bow/trigger/random_rotate/m {Mode:"~",YawMin:-5,YawMax:5,PitchMin:-5,PitchMax:5}

data modify storage api: Argument.ID set value 1009
data modify storage api: Argument.FieldOverride.Damage set value 6
execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @p[tag=this] UserID
data modify storage api: Argument.FieldOverride.Color set value 8454016
execute rotated as 0-0-0-0-0 run function api:object/summon
