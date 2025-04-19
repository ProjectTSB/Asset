#> asset:artifact/1137.over_pulse_headgear/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1137.over_pulse_headgear/dis_equip/

# エフェクトを解除
    effect clear @s haste

# 暗視を削除
    tag @s remove VL.NightVision
    data modify storage api: Argument.ID set value 337
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
