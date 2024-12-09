#> asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/summon.m
#
#
# @input args
#   ID: int
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/*

$data modify storage api: Argument.ID set value $(ID)
data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:temp MobUUID
function api:object/summon
kill @s
