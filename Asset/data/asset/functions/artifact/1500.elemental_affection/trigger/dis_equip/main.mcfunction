#> asset:artifact/1500.elemental_affection/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1500.elemental_affection/trigger/dis_equip/
    data modify storage api: Argument.ID set value 366
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
    data modify storage api: Argument.ID set value 367
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
    data modify storage api: Argument.ID set value 368
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
