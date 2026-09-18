#> asset:object/1181.yumeori_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1181/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

    execute if score @s General.Object.Tick matches 2 run data modify entity @s text set value '{"text":"1","font":"object/1181"}'
    execute if score @s General.Object.Tick matches 3 run data modify entity @s text set value '{"text":"2","font":"object/1181"}'
    execute if score @s General.Object.Tick matches 4 run data modify entity @s text set value '{"text":"3","font":"object/1181"}'
    execute if score @s General.Object.Tick matches 5 run data modify entity @s text set value '{"text":"4","font":"object/1181"}'
    execute if score @s General.Object.Tick matches 6 run data modify entity @s text set value '{"text":"5","font":"object/1181"}'
    execute if score @s General.Object.Tick matches 7 run data modify entity @s text set value '{"text":"6","font":"object/1181"}'
    execute if score @s General.Object.Tick matches 8 run data modify entity @s text set value '{"text":"7","font":"object/1181"}'

# 消滅処理
    kill @s[scores={General.Object.Tick=9..}]
