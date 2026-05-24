#> asset:artifact/0515.time_medicine/trigger/effect.m
#
#
#
# @within function asset:artifact/0515.time_medicine/trigger/3.main

# エフェクト
    $data modify storage api: Argument.ID set value $(ID)
    data modify storage api: Argument.Duration set from storage asset:temp Effect.Duration
    data modify storage api: Argument.FieldOverride set from storage asset:temp FieldOverride
    execute if predicate lib:dimension/is_end run data modify storage api: Argument.FieldOverride.InTheEnd set value true
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
