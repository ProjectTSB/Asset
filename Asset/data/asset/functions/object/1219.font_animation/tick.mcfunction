#> asset:object/1219.font_animation/tick
#
# 2つのフレームを4tickずつ交互に表示
#
# @within function asset:object/alias/1219/tick

# 字形ごとの送り幅に空白を足し、両フレームの行幅を66に揃える
    scoreboard players add @s General.Object.Tick 1
    execute if score @s General.Object.Tick matches 4 run data modify entity @s text set value '[{"text":"1","font":"object/1219"},{"text":"\\u0009","font":"space"}]'
    execute if score @s General.Object.Tick matches 8 run data modify entity @s text set value '[{"text":"0","font":"object/1219"},{"text":"\\u0018","font":"space"}]'
    execute if score @s General.Object.Tick matches 8 run scoreboard players set @s General.Object.Tick 0
