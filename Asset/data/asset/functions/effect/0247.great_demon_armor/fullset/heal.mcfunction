#> asset:effect/0247.great_demon_armor/fullset/heal
# @within function asset:effect/0247.great_demon_armor/fullset/passive

function api:modifier/max_health/get
execute store result storage api: Argument.Heal double 0.015 run data get storage api: Return.MaxHealth
data modify storage api: Argument.FixedHeal set value true
function api:heal/modifier
data modify storage api: Argument.FixedHeal set value false
data modify storage api: Argument.ApplyTrigger set value false
function api:heal/
function api:heal/reset
