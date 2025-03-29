#> asset:artifact/1057.great_demon_head/trigger/tick/heal
#
#
#
# @within function asset:artifact/1057.great_demon_head/trigger/tick/check

data modify storage api: Argument.Heal set value 1.5f
data modify storage api: Argument.FixedHeal set value true
function api:heal/modifier
data modify storage api: Argument.FixedHeal set value false
data modify storage api: Argument.ApplyTrigger set value false
function api:heal/
function api:heal/reset
