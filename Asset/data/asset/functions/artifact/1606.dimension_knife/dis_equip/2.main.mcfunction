#> asset:artifact/1606.dimension_knife/dis_equip/2.main
#
#
#
# @within function asset:artifact/1606.dimension_knife/dis_equip/1.trigger

# バフ削除
    data modify storage api: Argument.ID set value 387
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# バフ削除
    data modify storage api: Argument.ID set value 388
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
