#> asset:object/2088.patriot_launcher/tick/set_hp_gauge_hard
#
# 
#
# @within function asset:object/2088.patriot_launcher/tick/tick_active

# textに反映    
execute if score $CurrentDurability Temporary matches 1 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"HP：■□□"}'
execute if score $CurrentDurability Temporary matches 2 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"HP：■■□"}'
execute if score $CurrentDurability Temporary matches 3 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"HP：■■■"}'
