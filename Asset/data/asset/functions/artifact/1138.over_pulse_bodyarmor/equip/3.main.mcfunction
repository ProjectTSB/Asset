#> asset:artifact/1138.over_pulse_bodyarmor/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1138.over_pulse_bodyarmor/equip/2.check_condition

# 音を鳴らす
    playsound block.chain.step player @s ~ ~ ~ 0.2 0
    playsound entity.illusioner.prepare_blindness player @s ~ ~ ~ 0.6 1.5

# スコアを設定
    scoreboard players operation @s VM.Tick > $100 Const
# ループを起動
    schedule function asset:artifact/1138.over_pulse_bodyarmor/schedule_loop 1t replace
