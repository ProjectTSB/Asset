#> asset:artifact/1465.versatile_plasma/dis_equip/2.main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1465.versatile_plasma/dis_equip/*

# Effect374を削除
    data modify storage api: Argument.ID set value 374
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
