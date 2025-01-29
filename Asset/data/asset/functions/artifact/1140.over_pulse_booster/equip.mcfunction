#> asset:artifact/1140.over_pulse_booster/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/1140/equip

# 音を鳴らす
    playsound block.chain.step player @s ~ ~ ~ 0.2 0
    playsound entity.illusioner.prepare_blindness player @s ~ ~ ~ 0.6 1.5
