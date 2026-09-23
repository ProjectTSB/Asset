#> asset:artifact/1474.ninja_kunai/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1474.ninja_kunai/dis_equip/

# Effect削除
    data modify storage api: Argument.ID set value 385
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
