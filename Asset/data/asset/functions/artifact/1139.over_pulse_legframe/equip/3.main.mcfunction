#> asset:artifact/1139.over_pulse_legframe/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1139.over_pulse_legframe/equip/2.check_condition

# 音を鳴らす
    playsound block.chain.step player @a ~ ~ ~ 0.2 0
    playsound entity.illusioner.prepare_blindness player @a ~ ~ ~ 0.6 1.5
