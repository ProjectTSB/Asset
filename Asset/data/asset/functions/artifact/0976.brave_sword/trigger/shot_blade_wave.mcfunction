#> asset:artifact/0976.brave_sword/trigger/shot_blade_wave
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/3.main

data modify storage api: Argument.ID set value 1077
data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
execute positioned ^ ^ ^1 positioned ~ ~-0.5 ~ run function api:object/summon
