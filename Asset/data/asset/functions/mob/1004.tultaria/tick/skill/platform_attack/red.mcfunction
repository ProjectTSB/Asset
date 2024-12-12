#> asset:mob/1004.tultaria/tick/skill/platform_attack/red
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/**

data modify storage api: Argument.ID set value 2051
execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
function api:object/summon
