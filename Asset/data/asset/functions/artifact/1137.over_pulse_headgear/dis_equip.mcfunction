#> asset:artifact/1137.over_pulse_headgear/dis_equip
#
# 装備解除時に実行される処理
#
# @within function asset:artifact/alias/1137/dis_equip

# エフェクトを解除
    tag @s remove VL.NightVision
    effect clear @s night_vision
    effect clear @s haste
