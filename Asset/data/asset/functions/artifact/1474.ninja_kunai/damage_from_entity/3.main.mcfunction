#> asset:artifact/1474.ninja_kunai/damage_from_entity/3.main
#
#
#
# @within function asset:artifact/1474.ninja_kunai/damage_from_entity/2.check_condition

# Effect削除
    data modify storage api: Argument.ID set value 385
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
