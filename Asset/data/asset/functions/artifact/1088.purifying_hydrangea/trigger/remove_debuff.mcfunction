#> asset:artifact/1088.purifying_hydrangea/trigger/remove_debuff
#
#
#
# @within function asset:artifact/1088.purifying_hydrangea/trigger/3.main

data modify storage api: Argument.ClearLv set value 2
data modify storage api: Argument.ClearType set value "bad"
data modify storage api: Argument.ClearCount set value 1
function api:entity/mob/effect/remove/from_level
function api:entity/mob/effect/reset
