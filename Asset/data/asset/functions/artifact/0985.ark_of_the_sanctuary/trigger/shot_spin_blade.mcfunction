#> asset:artifact/0985.ark_of_the_sanctuary/trigger/shot_spin_blade
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/3.main

data modify storage api: Argument.ID set value 1145
data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
execute positioned ^ ^ ^1 positioned ~ ~-0.5 ~ run function api:object/summon
