#> asset:object/2157.haruclaire_spread_icespear/tick/effect_vector
#
# Objectのtick時の処理
#
# @within asset:object/2157.haruclaire_spread_icespear/tick/

# 計算
    scoreboard players add @s General.Object.Tick 1
    execute if score @s General.Object.Tick matches 23.. run scoreboard players set @s General.Object.Tick 1

# 予告線表示
    execute if score @s General.Object.Tick matches 1 run data modify entity @s text set value '[{"text":">>","color":"#fca1ff","bold":true}]'
    execute if score @s General.Object.Tick matches 3 run data modify entity @s text set value '[{"text":">","color":"#AD5D78","bold":true},{"text":">","color":"#fca1ff","bold":true}]'
    execute if score @s General.Object.Tick matches 5 run data modify entity @s text set value '[{"text":">","color":"#AD5D78","bold":true},{"text":">","color":"#AD5D78","bold":true}]'
    execute if score @s General.Object.Tick matches 20 run data modify entity @s text set value '[{"text":">","color":"#fca1ff","bold":true},{"text":">","color":"#AD5D78","bold":true}]'
    execute if score @s General.Object.Tick matches 22 run data modify entity @s text set value '[{"text":">>","color":"#fca1ff","bold":true}]'
