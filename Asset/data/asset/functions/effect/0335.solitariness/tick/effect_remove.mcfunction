#> asset:effect/0335.solitariness/tick/effect_remove
#
#
#
# @within function asset:effect/0335.solitariness/tick/


# 消して
    data modify storage api: Argument.ID set value 335
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# 自己嫌悪を付与
    data modify storage api: Argument.ID set value 336
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
