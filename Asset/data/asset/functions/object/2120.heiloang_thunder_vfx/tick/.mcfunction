#> asset:object/2120.heiloang_thunder_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2120/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデル変更
    execute if entity @s[scores={General.Object.Tick=2}] run data modify entity @s text set value '{"text":"1","font":"object/2120/0"}'
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s text set value '{"text":"2","font":"object/2120/0"}'
    execute if entity @s[scores={General.Object.Tick=4}] run data modify entity @s text set value '{"text":"3","font":"object/2120/0"}'
    execute if entity @s[scores={General.Object.Tick=5}] run data modify entity @s text set value '{"text":"4","font":"object/2120/0"}'
    execute if entity @s[scores={General.Object.Tick=6}] run data modify entity @s text set value '{"text":"5","font":"object/2120/0"}'
    execute if entity @s[scores={General.Object.Tick=7}] run data modify entity @s text set value '{"text":"4","font":"object/2120/0"}'
    execute if entity @s[scores={General.Object.Tick=8}] if predicate lib:random_pass_per/50 run kill @s
    execute if entity @s[scores={General.Object.Tick=8}] run data modify entity @s text set value '{"text":"5","font":"object/2120/0"}'
    # execute if entity @s[scores={General.Object.Tick=7}] run data modify entity @s item.tag.CustomModelData set value 20452

# 消滅処理
    kill @s[scores={General.Object.Tick=10..}]
