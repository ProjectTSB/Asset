#> asset:object/2141.louvert_soul_bomb/tick/countdown
#
# カウントダウン処理
#
# @within function asset:object/2141.louvert_soul_bomb/tick/process

execute if score @s General.Object.Tick matches 20 on passengers run data modify entity @s text set value '{"text":"9","font":"magic"}'
execute if score @s General.Object.Tick matches 40 on passengers run data modify entity @s text set value '{"text":"8","font":"magic"}'
execute if score @s General.Object.Tick matches 60 on passengers run data modify entity @s text set value '{"text":"7","font":"magic"}'
execute if score @s General.Object.Tick matches 80 on passengers run data modify entity @s text set value '{"text":"6","font":"magic"}'
execute if score @s General.Object.Tick matches 100 on passengers run data modify entity @s text set value '{"text":"5","font":"magic"}'
execute if score @s General.Object.Tick matches 120 on passengers run data modify entity @s text set value '{"text":"4","font":"magic"}'
execute if score @s General.Object.Tick matches 140 on passengers run data modify entity @s text set value '{"text":"3","font":"magic"}'
execute if score @s General.Object.Tick matches 160 on passengers run data modify entity @s text set value '{"text":"2","font":"magic"}'
execute if score @s General.Object.Tick matches 180 on passengers run data modify entity @s text set value '{"text":"1","font":"magic"}'
execute if score @s General.Object.Tick matches 200 on passengers run kill @s
