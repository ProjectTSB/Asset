#> asset:artifact/1606.dimension_knife/trigger/remove_buff
#
#
#
# @within function asset:artifact/1606.dimension_knife/trigger/3.main

# バフ削除
    data modify storage api: Argument.ID set value 388
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
