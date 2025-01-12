#> asset:island/55/dispelled
# @within function asset_manager:island/dispel/dispelled.m

data modify storage api: Argument.ID set value 55
data modify storage api: Argument.GroupID set value "island"
function api:teleporter/modify_groups/add
