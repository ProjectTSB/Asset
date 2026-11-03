#> asset:artifact/1646.laser_pointer/trigger/apply_effect
#
#
#
# @within function asset:artifact/1646.laser_pointer/trigger/*

# Effect420(再)付与
    data modify storage api: Argument.ID set value 420
    execute unless data storage api: Argument.Duration run data modify storage api: Argument.Duration set value 0
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
