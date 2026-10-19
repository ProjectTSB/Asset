#> asset:artifact/1620.satelite_drop/dis_equip/2.main
#
#
#
# @within function asset:artifact/1620.satelite_drop/dis_equip/1.trigger

# Effect395を削除
    data modify storage api: Argument.ID set value 395
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
