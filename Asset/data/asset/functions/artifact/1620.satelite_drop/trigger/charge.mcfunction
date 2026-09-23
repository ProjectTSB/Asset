#> asset:artifact/1620.satelite_drop/trigger/charge
#
#
#
# @within function asset:artifact/1620.satelite_drop/trigger/**

# Effect395を(再)付与
    data modify storage api: Argument.ID set value 395
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
