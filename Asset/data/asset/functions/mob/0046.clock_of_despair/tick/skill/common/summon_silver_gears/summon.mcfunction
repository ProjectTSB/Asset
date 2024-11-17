#> asset:mob/0046.clock_of_despair/tick/skill/common/summon_silver_gears/summon
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/summon_silver_gears/?

data modify storage api: Argument.ID set value 2061
data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:temp MobUUID
function api:object/summon
kill @s
