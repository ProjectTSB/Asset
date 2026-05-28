#> asset:effect/0345.topaz_protection/barrier/break
#
#
#
# @within function asset:effect/0345.topaz_protection/barrier/add

# このエフェクトを解除
    data modify storage api: Argument.ID set value 345
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
