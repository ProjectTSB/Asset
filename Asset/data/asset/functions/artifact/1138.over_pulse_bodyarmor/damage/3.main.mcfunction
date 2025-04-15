#> asset:artifact/1138.over_pulse_bodyarmor/damage/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1138.over_pulse_bodyarmor/damage/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact IgnoreItemUpdate set value true
    function asset:artifact/common/use/chest

# クールダウン設定
    tag @s remove VM.NotDamaged
    scoreboard players set @s VM.Tick 200
# ループを起動
    schedule function asset:artifact/1138.over_pulse_bodyarmor/schedule_loop 1t replace
