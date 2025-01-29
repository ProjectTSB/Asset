#> asset:artifact/1138.over_pulse_bodyarmor/damage/
#
# ダメージを受けた時の処理
#
# @within function asset:artifact/alias/1138/damage/

# クールダウン設定
    tag @s remove VM.NotDamaged
    scoreboard players set @s VM.Tick 200
# ループを起動
    schedule function asset:artifact/1138.over_pulse_bodyarmor/schedule_loop 1t replace
