#> asset:artifact/1084.mia_zoru_luc/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1084.mia_zoru_luc/trigger/dis_equip/

# エフェクトを削除
    data modify storage api: Argument.ID set value 295
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
