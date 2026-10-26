#> asset:artifact/1584.pk_insight/trigger/dis_equip/2.check_condition
#
#
#
# @within function asset:artifact/1584.pk_insight/trigger/dis_equip/1.trigger

# Effect386がないならキャンセル
    data modify storage api: Argument.ID set value 386
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function asset:artifact/1584.pk_insight/trigger/dis_equip/3.main
