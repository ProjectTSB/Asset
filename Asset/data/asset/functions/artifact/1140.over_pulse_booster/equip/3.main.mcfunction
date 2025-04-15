#> asset:artifact/1140.over_pulse_booster/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1140.over_pulse_booster/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact IgnoreItemUpdate set value true
    function asset:artifact/common/use/feet

# 音を鳴らす
    playsound block.chain.step player @s ~ ~ ~ 0.2 0
    playsound entity.illusioner.prepare_blindness player @s ~ ~ ~ 0.6 1.5
