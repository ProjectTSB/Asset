#> asset:effect/0303.celestial_target/tick/summon_star.m
#
#
#
# @within function asset:effect/0303.celestial_target/tick/

particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.2 15

data modify storage api: Argument.ID set value 1097
data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.AppliedFrom
execute store result storage api: Argument.FieldOverride.TargetMobUUID int 1 run scoreboard players get @s MobUUID
function api:object/summon
