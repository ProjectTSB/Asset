#> asset:artifact/1137.over_pulse_headgear/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1137.over_pulse_headgear/dis_equip/

# エフェクトを解除
    tag @s remove VL.NightVision
    effect clear @s night_vision
    effect clear @s haste
