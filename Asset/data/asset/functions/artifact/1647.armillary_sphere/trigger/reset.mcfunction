#> asset:artifact/1647.armillary_sphere/trigger/reset
#
#
#
# @within
#   function asset:artifact/1647.armillary_sphere/trigger/2.check_condition
#   function asset:artifact/1647.armillary_sphere/dis_equip/3.main

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

# 装備中タグを解除
    tag @s remove A1647.Equipping
