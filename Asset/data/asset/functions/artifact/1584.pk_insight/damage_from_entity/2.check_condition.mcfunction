#> asset:artifact/1584.pk_insight/damage_from_entity/2.check_condition
#
#
#
# @within function asset:artifact/1584.pk_insight/damage_from_entity/1.trigger

# Effect 386が付与されている状態が条件
    data modify storage api: Argument.ID set value 386
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect{ID:386} run function asset:artifact/1584.pk_insight/damage_from_entity/3.main
