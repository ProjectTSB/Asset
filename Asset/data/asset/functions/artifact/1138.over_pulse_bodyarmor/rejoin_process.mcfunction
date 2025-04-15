#> asset:artifact/1138.over_pulse_bodyarmor/rejoin_process
#
# rejoin時の処理
#
# @within tag/function asset:rejoin

# ループを発火
    execute if entity @a[scores={VM.Tick=1..},limit=1] run schedule function asset:artifact/1138.over_pulse_bodyarmor/schedule_loop 1t replace
