#> asset:object/2187.heiloang_ff_main/tick/phase_2
#
# Objectのtick時の処理
#
# @within asset:object/2187.heiloang_ff_main/tick/

# Scale
    # execute if entity @s[scores={General.Object.Tick=31}] run data merge entity @s {interpolation_duration:0,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[15f,15f,1f]}}
    execute if entity @s[scores={General.Object.Tick=79}] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,10f,0f]}}
    execute if entity @s[scores={General.Object.Tick=82}] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

# アニメーション
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $6 Const
    execute if score $Interval Temporary matches 0 run data modify entity @s text set value '{"text":"0","font":"object/2187/1"}'
    execute if score $Interval Temporary matches 1 run data modify entity @s text set value '{"text":"1","font":"object/2187/1"}'
    execute if score $Interval Temporary matches 2 run data modify entity @s text set value '{"text":"2","font":"object/2187/1"}'
    execute if score $Interval Temporary matches 3 run data modify entity @s text set value '{"text":"3","font":"object/2187/1"}'
    execute if score $Interval Temporary matches 4 run data modify entity @s text set value '{"text":"4","font":"object/2187/1"}'
    execute if score $Interval Temporary matches 5 run data modify entity @s text set value '{"text":"5","font":"object/2187/1"}'

# リセット
    scoreboard players reset $Interval
