#> asset:artifact/0563.heartland/trigger/fullset/tick/foreach
#
#
#
# @within function asset:artifact/0563.heartland/trigger/fullset/tick/main

data modify storage api: Argument.ID set value 266
function api:entity/mob/effect/get/from_id
execute if data storage api: Return.Effect run return fail

data modify storage api: Argument.ID set value 266
function api:entity/mob/effect/give
function api:entity/mob/effect/reset
