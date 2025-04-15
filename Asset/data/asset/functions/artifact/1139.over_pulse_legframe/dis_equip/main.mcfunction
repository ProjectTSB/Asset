#> asset:artifact/1139.over_pulse_legframe/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1139.over_pulse_legframe/dis_equip/

# 音を鳴らす
    playsound block.chain.step player @s ~ ~ ~ 0.2 0
    playsound entity.illusioner.prepare_blindness player @s ~ ~ ~ 0.6 1.5
