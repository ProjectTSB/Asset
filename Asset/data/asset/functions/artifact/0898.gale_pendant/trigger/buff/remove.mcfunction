#> asset:artifact/0898.gale_pendant/trigger/buff/remove
#
#
#
# @within function asset:artifact/0898.gale_pendant/trigger/buff/update

# バフ解除
    data modify storage api: Argument.ID set value 261
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
