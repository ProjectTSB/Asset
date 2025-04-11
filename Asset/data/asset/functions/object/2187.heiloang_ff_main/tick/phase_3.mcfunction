#> asset:object/2187.heiloang_ff_main/tick/phase_3
#
# Objectのtick時の処理
#
# @within asset:object/2187.heiloang_ff_main/tick/

# 移動
    execute if entity @s[scores={General.Object.Tick=110..}] at @s run tp @s ^ ^-0.3 ^0.7

# Scale
    execute if entity @s[scores={General.Object.Tick=85}] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[6f,6f,1f]}}
    execute if entity @s[scores={General.Object.Tick=88}] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[14f,14f,1f]}}
    execute if entity @s[scores={General.Object.Tick=110}] run data merge entity @s {interpolation_duration:100,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[50f,50f,100f]}}
    # 画面エフェクト
        execute if entity @s[scores={General.Object.Tick=115}] run title @a[distance=..160] times 10 20 40
        execute if entity @s[scores={General.Object.Tick=115}] run title @a[distance=..160] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}

# アニメーション
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 run data modify entity @s text set value '{"text":"0","font":"object/2187/2"}'
    execute if score $Interval Temporary matches 1 run data modify entity @s text set value '{"text":"1","font":"object/2187/2"}'
    execute if score $Interval Temporary matches 2 run data modify entity @s text set value '{"text":"2","font":"object/2187/2"}'

# リセット
    scoreboard players reset $Interval
