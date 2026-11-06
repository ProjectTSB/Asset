#> asset:artifact/1269.apocalypse/dis_equip/2.main
#
#
#
# @within function asset:artifact/1269.apocalypse/dis_equip/1.trigger

# バフ解除
    data modify storage api: Argument.ID set value 334
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
