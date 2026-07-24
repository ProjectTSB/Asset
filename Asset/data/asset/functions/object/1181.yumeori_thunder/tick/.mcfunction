#> asset:object/1181.yumeori_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1181/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

    execute if score @s General.Object.Tick matches 2 run data modify entity @s text set value '{"text":"0","font":"object/1181"}'
    execute if score @s General.Object.Tick matches 3 run data modify entity @s text set value '{"text":"1","font":"object/1181"}'
    execute if score @s General.Object.Tick matches 4 run data modify entity @s text set value '{"text":"2","font":"object/1181"}'

# 消滅処理
    kill @s[scores={General.Object.Tick=5..}]
