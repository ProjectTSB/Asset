#> asset:artifact/1647.armillary_sphere/dis_equip/2.main
#
#
#
# @within function asset:artifact/1647.armillary_sphere/dis_equip/1.trigger

# 関連Effect全削除
    data modify storage api: Argument.ID set value 422
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 423
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 424
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 426
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
