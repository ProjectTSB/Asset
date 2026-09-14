#> asset:artifact/1584.pk_insight/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1584.pk_insight/trigger/dis_equip/

# Effect 386剝奪
    data modify storage api: Argument.ID set value 386
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# Effect 389付与
    data modify storage api: Argument.ID set value 389
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
