#> asset:object/2257.thundercloud/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2257/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 描画
    execute if score @s General.Object.Tick matches 3 run data modify entity @s text set value '{"text":"1","font":"object/2257/0"}'
    execute if score @s General.Object.Tick matches 6 run data modify entity @s text set value '{"text":"2","font":"object/2257/0"}'
    execute if score @s General.Object.Tick matches 9 run data modify entity @s text set value '{"text":"3","font":"object/2257/0"}'
    execute if score @s General.Object.Tick matches 12 run data modify entity @s text set value '{"text":"4","font":"object/2257/0"}'

# 消滅処理
    kill @s[scores={General.Object.Tick=12..}]
