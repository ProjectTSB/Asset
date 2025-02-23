#> asset:object/2208.eclael_slash_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2208/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデル変更
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {interpolation_duration:3,start_interpolation:0}
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s transformation.scale set value [1f,4f,1f]
    execute if entity @s[scores={General.Object.Tick=4}] run data modify entity @s text set value '{"text":"1","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=5}] run data modify entity @s text set value '{"text":"2","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=6}] run data modify entity @s text set value '{"text":"3","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=9}] run data modify entity @s text set value '{"text":"4","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=11}] run data modify entity @s text set value '{"text":"5","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=16}] run data merge entity @s {interpolation_duration:5,start_interpolation:0}
    execute if entity @s[scores={General.Object.Tick=16}] run data modify entity @s transformation.scale set value [0f,1f,0f]

# 消滅処理
    kill @s[scores={General.Object.Tick=22..}]
