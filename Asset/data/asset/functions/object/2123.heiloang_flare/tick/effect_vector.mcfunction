#> asset:object/2123.heiloang_flare/tick/effect_vector
#
# Objectのtick時の処理
#
# @within asset:object/2123.heiloang_flare/tick/

# 計算
    scoreboard players add @s General.Object.Tick 1
    execute if score @s General.Object.Tick matches 23.. run scoreboard players set @s General.Object.Tick 1

# 予告線表示
    execute if score @s General.Object.Tick matches 1 run data modify entity @s text set value '[{"text":">>","color":"#ffcf80","bold":true}]'
    execute if score @s General.Object.Tick matches 3 run data modify entity @s text set value '[{"text":">","color":"#BF874E","bold":true},{"text":">","color":"#ffcf80","bold":true}]'
    execute if score @s General.Object.Tick matches 5 run data modify entity @s text set value '[{"text":">","color":"#BF874E","bold":true},{"text":">","color":"#BF874E","bold":true}]'
    execute if score @s General.Object.Tick matches 20 run data modify entity @s text set value '[{"text":">","color":"#ffcf80","bold":true},{"text":">","color":"#BF874E","bold":true}]'
    execute if score @s General.Object.Tick matches 22 run data modify entity @s text set value '[{"text":">>","color":"#ffcf80","bold":true}]'
