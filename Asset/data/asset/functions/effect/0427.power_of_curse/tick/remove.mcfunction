#> asset:effect/0427.power_of_curse/tick/remove
#
#
#
# @within function asset:effect/0427.power_of_curse/tick/

# 自身は削除
    data modify storage api: Argument.ID set value 427
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# Effect428を付与
    data modify storage api: Argument.ID set value 428
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
