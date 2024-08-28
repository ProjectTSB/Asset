#> asset:mob/0392.ecual_first/ai/projectile/hydro/0.summon
#
# ハイドロストーム 召喚
#
# @within function asset:mob/0392.ecual_first/**

# 本体召喚
    summon item_display ~ ~ ~ {Tags:["AW.HydroStorm","AW.ProjectileInit","AllowProcessingCommonTag","AutoKillWhenDiePassenger"],interpolation_duration:10,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:600},CustomModelData:20364}},Passengers:[{id:"item_display",Tags:["AllowProcessingCommonTag","AutoKillWhenDiePassenger"],interpolation_duration:10,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.01f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:600},CustomModelData:20365}},Passengers:[{id:"area_effect_cloud",Particle:"block air",Radius:0f,Duration:2}]}]}

# Init処理
    execute as @e[type=item_display,tag=AW.HydroStorm,tag=AW.ProjectileInit,distance=..0.01] run function asset:mob/0392.ecual_first/ai/projectile/hydro/1.init
