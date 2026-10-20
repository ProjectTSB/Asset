#> asset:artifact/1623.palermo/dis_equip/remove_buff
#
#
#
# @within function asset:artifact/1623.palermo/dis_equip/2.main

# バフ削除
    data modify storage api: Argument.ID set value 410
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
