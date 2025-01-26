#> asset:object/2021.hydro_storm/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2021/summon

# 本体召喚
    summon item_display ~ ~ ~ {Tags:["ObjectInit","AllowProcessingCommonTag","AutoKillWhenDiePassenger"],interpolation_duration:10,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:600},CustomModelData:20364}},Passengers:[{id:"item_display",Tags:["AllowProcessingCommonTag","AutoKillWhenDiePassenger"],interpolation_duration:10,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.01f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:600},CustomModelData:20365}},Passengers:[{id:"area_effect_cloud",Particle:"block air",Radius:0f,Duration:10}]}]}
