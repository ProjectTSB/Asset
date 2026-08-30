#> asset:artifact/1584.pk_insight/damage_from_entity/3.2.failure
#
#
#
# @within function asset:artifact/1584.pk_insight/damage_from_entity/3.main

# Effect剝奪
    data modify storage api: Argument.ID set value 386
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
