#> asset:artifact/1412.seal_of_dual_rhythm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1412.seal_of_dual_rhythm/trigger/dis_equip/

# 補正の解除はEffect自身のremoveイベントに委ねる。
    data modify storage api: Argument.ID set value 399
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
