#> asset:object/2088.patriot_launcher/tick/set_repair_gauge
#
# 
#
# @within function asset:object/2088.patriot_launcher/tick/tick_broken

#> prv
# @private
    #declare score_holder $RepairRatioE1 # E1なので10倍してる
    #declare score_holder $MaxRepairTimeE1 # E1なので10倍してる

# 10 - 10*(修理値/最大修理値) を出したいので　10 + (-10*修理値/最大修理値)に変形して計算
execute store result score $RepairRatioE1 Temporary run data get storage asset:context this.RepairTime -10
execute store result score $MaxRepairTimeE1 Temporary run data get storage asset:context this.MaxRepairTime 1
scoreboard players operation $RepairRatioE1 Temporary /= $MaxRepairTimeE1 Temporary
scoreboard players add $RepairRatioE1 Temporary 10
    #tellraw @a [{"score":{"objective":"Temporary","name":"$RepairRatioE1"}}]
    #tellraw @a [{"score":{"objective":"Temporary","name":"$MaxRepairTimeE1"}}]

# textに反映    
execute if score $RepairRatioE1 Temporary matches 0 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：□□□□□□□□□□"}'
execute if score $RepairRatioE1 Temporary matches 1 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：■□□□□□□□□□"}'
execute if score $RepairRatioE1 Temporary matches 2 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：■■□□□□□□□□"}'
execute if score $RepairRatioE1 Temporary matches 3 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：■■■□□□□□□□"}'
execute if score $RepairRatioE1 Temporary matches 4 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：■■■■□□□□□□"}'
execute if score $RepairRatioE1 Temporary matches 5 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：■■■■■□□□□□"}'
execute if score $RepairRatioE1 Temporary matches 6 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：■■■■■■□□□□"}'
execute if score $RepairRatioE1 Temporary matches 7 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：■■■■■■■□□□"}'
execute if score $RepairRatioE1 Temporary matches 8 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：■■■■■■■■□□"}'
execute if score $RepairRatioE1 Temporary matches 9 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：■■■■■■■■■□"}'
execute if score $RepairRatioE1 Temporary matches 10 on passengers if entity @s[type=text_display,tag=PatriotLauncher.Gauge] run data modify entity @s text set value '{"color":"#ffffff","text":"修理：■■■■■■■■■■"}'
