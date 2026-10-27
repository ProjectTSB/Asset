#> asset:artifact/1474.ninja_kunai/tick/3.main
#
#
#
# @within function asset:artifact/1474.ninja_kunai/tick/2.check_condition

# Effect385付与
    data modify storage api: Argument.ID set value 385
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
