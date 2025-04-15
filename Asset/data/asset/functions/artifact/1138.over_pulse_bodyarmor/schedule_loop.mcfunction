#> asset:artifact/1138.over_pulse_bodyarmor/schedule_loop
#
# スケジュール処理
#
# @within function
#   asset:artifact/1138.over_pulse_bodyarmor/equip/3.main
#   asset:artifact/1138.over_pulse_bodyarmor/damage/3.main
#   asset:artifact/1138.over_pulse_bodyarmor/rejoin_process
#   asset:artifact/1138.over_pulse_bodyarmor/schedule_loop

# スコア減少
    execute as @a if score @s VM.Tick matches 1.. run scoreboard players remove @s VM.Tick 1
# スコアが0ならリセット
    execute as @a if score @s VM.Tick matches ..0 run scoreboard players reset @s VM.Tick
# ループを発火
    execute if entity @a[scores={VM.Tick=1..},limit=1] run schedule function asset:artifact/1138.over_pulse_bodyarmor/schedule_loop 1t replace
