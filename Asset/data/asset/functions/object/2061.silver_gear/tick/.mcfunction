#> asset:object/2061.silver_gear/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2061/tick

scoreboard players add @s General.Object.Tick 1

execute if score @s General.Object.Tick matches 03 run data merge entity @s {interpolation_duration:12,transformation:{translation:[0f, 0f, 0f],scale:[7f,0.05f,7f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20390}},start_interpolation:0}

execute if score @s General.Object.Tick matches 03..09 run tp @s ~ ~ ~ ~5 ~
execute if score @s General.Object.Tick matches 10..16 run tp @s ~ ~ ~ ~4 ~
execute if score @s General.Object.Tick matches 17..22 run tp @s ~ ~ ~ ~3 ~
execute if score @s General.Object.Tick matches 23..27 run tp @s ~ ~ ~ ~2 ~
execute if score @s General.Object.Tick matches 28..30 run tp @s ~ ~ ~ ~1 ~

execute if score @s General.Object.Tick matches 34 run data merge entity @s {interpolation_duration:4,transformation:{translation:[0f, -0.05f, 0f]},start_interpolation:0}
execute if score @s General.Object.Tick matches 38 run data merge entity @s {transformation:{scale:[3.5f, 0.05f, 3.5f]},item:{id:"minecraft:air"}}


execute if score @s General.Object.Tick matches 125 run summon area_effect_cloud ~ ~5 ~ {Duration:19,Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.7075f,0f,0f,0.7075f],translation:[0f,-0.5f,0f],scale:[7f,0f,7f]},Tags:["Object","Uninterferable","2061.GearSubVfx","AllowProcessingCommonTag","AutoKillWhenDieVehicle"]}],Tags:["Object","Uninterferable"]}
execute if score @s General.Object.Tick matches 125 run summon area_effect_cloud ~ ~4 ~ {Duration:19,Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.7075f,0f,0f,0.7075f],translation:[0f,0.5f,0f],scale:[4.5f,0f,4.5f]},Tags:["Object","Uninterferable","2061.GearSubVfx","AllowProcessingCommonTag","AutoKillWhenDieVehicle"]}],Tags:["Object","Uninterferable"]}

execute if score @s General.Object.Tick matches 127 run data merge entity @s {interpolation_duration:4,transformation:{translation:[0f, 0f, 0f],scale:[7f,0.05f,7f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20390}},start_interpolation:0}
execute if score @s General.Object.Tick matches 127 positioned ~ ~5.5 ~ as @e[type=item_display,tag=2061.GearSubVfx,distance=..0.01] run data merge entity @s {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20391}}}
execute if score @s General.Object.Tick matches 127 positioned ~ ~4.5 ~ as @e[type=item_display,tag=2061.GearSubVfx,distance=..0.01] run data merge entity @s {interpolation_duration:2,transformation:{translation:[0f, -0.35f, 0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20391}},start_interpolation:0}
execute if score @s General.Object.Tick matches 129 positioned ~ ~4.5 ~ as @e[type=item_display,tag=2061.GearSubVfx,distance=..0.01] run data merge entity @s {interpolation_duration:4,transformation:{translation:[0f, -0.5f, 0f]},start_interpolation:0}

execute if score @s General.Object.Tick matches 127..141 run tp @s ~ ~ ~ ~8 ~
execute if score @s General.Object.Tick matches 127..141 positioned ~ ~5.5 ~ as @e[type=item_display,tag=2061.GearSubVfx,distance=..0.01] at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s General.Object.Tick matches 127..141 positioned ~ ~4.5 ~ as @e[type=item_display,tag=2061.GearSubVfx,distance=..0.01] at @s run tp @s ~ ~ ~ ~-10 ~

execute if score @s General.Object.Tick matches 127..131 positioned ~ ~5 ~ run function asset:object/2061.silver_gear/tick/vfx/burst_rain/1
execute if score @s General.Object.Tick matches 132..136 positioned ~ ~5 ~ run function asset:object/2061.silver_gear/tick/vfx/burst_rain/2
execute if score @s General.Object.Tick matches 137..141 positioned ~ ~5 ~ run function asset:object/2061.silver_gear/tick/vfx/burst_rain/3
execute if score @s General.Object.Tick matches 127..141 positioned ~ ~4 ~ run particle flash
execute if score @s General.Object.Tick matches 127..141 positioned ~ ~4 ~ run playsound minecraft:entity.firework_rocket.twinkle_far hostile @a ~ ~ ~ 1 2

execute if score @s General.Object.Tick matches 127..141 if entity @a[tag=!PlayerShouldInvulnerable,distance=..8.5] run function asset:object/2061.silver_gear/tick/deal_damage

execute if score @s General.Object.Tick matches 141 run data merge entity @s {interpolation_duration:4,transformation:{translation:[0f, -0.05f, 0f]},item:{},start_interpolation:0}


execute if score @s General.Object.Tick matches 145.. run kill @s
