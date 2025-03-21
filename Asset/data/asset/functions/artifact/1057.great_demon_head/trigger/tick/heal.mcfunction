#> asset:artifact/1057.great_demon_head/trigger/tick/heal
#
#
#
# @within function asset:artifact/1057.great_demon_head/trigger/tick/check

function api:modifier/max_health/get
execute store result storage api: Argument.Heal double 0.015 run data get storage api: Return.MaxHealth
data modify storage api: Argument.FixedHeal set value true
function api:heal/modifier
data modify storage api: Argument.FixedHeal set value false
data modify storage api: Argument.ApplyTrigger set value false
function api:heal/
function api:heal/reset
