#> asset:mob/0345.louvert_soul_bomb/tick/4.countdown
#
# カウントダウン
#
# @within function asset:mob/0345.louvert_soul_bomb/tick/2.tick

execute if score @s 9L.Tick matches 20 on passengers run data modify entity @s text set value '{"text":"9","font":"magic"}'
execute if score @s 9L.Tick matches 40 on passengers run data modify entity @s text set value '{"text":"8","font":"magic"}'
execute if score @s 9L.Tick matches 60 on passengers run data modify entity @s text set value '{"text":"7","font":"magic"}'
execute if score @s 9L.Tick matches 80 on passengers run data modify entity @s text set value '{"text":"6","font":"magic"}'
execute if score @s 9L.Tick matches 100 on passengers run data modify entity @s text set value '{"text":"5","font":"magic"}'
execute if score @s 9L.Tick matches 120 on passengers run data modify entity @s text set value '{"text":"4","font":"magic"}'
execute if score @s 9L.Tick matches 140 on passengers run data modify entity @s text set value '{"text":"3","font":"magic"}'
execute if score @s 9L.Tick matches 160 on passengers run data modify entity @s text set value '{"text":"2","font":"magic"}'
execute if score @s 9L.Tick matches 180 on passengers run data modify entity @s text set value '{"text":"1","font":"magic"}'
execute if score @s 9L.Tick matches 200 on passengers run kill @s