#> asset:effect/0603.domination/tick/remove_effect
#
#
#
# @within function asset:effect/0603.domination/tick/

# デバフ解除
    data modify storage api: Argument.ID set value 603
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
