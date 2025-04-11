#> asset:object/2207.eclael_slash_line/tick/effect_check
#
# Objectのtick時の処理
#
# @within asset:object/2207.eclael_slash_line/tick/


    execute if entity @s[scores={General.Object.Tick=24}] run data modify entity @s text set value '{"text":"1","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=25}] run data modify entity @s text set value '{"text":"2","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=26}] run data modify entity @s text set value '{"text":"3","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=29}] run data modify entity @s text set value '{"text":"4","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=31}] run data modify entity @s text set value '{"text":"5","font":"object/2208/0"}'
