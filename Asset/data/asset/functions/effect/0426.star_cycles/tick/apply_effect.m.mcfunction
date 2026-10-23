#> asset:effect/0426.star_cycles/tick/apply_effect
#
#
#
# @within function asset:effect/0426.star_cycles/tick/

# Effectをクリアしてから賦与
    data modify storage api: Argument.ID set value 422
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 423
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 424
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    $data modify storage api: Argument.ID set value $(ID)
    function api:entity/mob/effect/give
