#> asset:artifact/1138.over_pulse_bodyarmor/damage/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1138.over_pulse_bodyarmor/damage/2.check_condition

# クールダウン設定
    tag @s remove VM.NotDamaged
    scoreboard players set @s VM.Tick 200
# ループを起動
    schedule function asset:artifact/1138.over_pulse_bodyarmor/schedule_loop 1t replace
