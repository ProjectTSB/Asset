#> asset:object/2017.ecual_water_magic/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2017/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit","2017.WaterMagic"],interpolation_duration:30,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:33023},CustomModelData:20364}},Passengers:[{id:"item_display",Tags:["ProcessCommonTag","AutoKillWhenDieVehicle"],interpolation_duration:30,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:33023},CustomModelData:20365}},Passengers:[{id:"item_display",Tags:["ProcessCommonTag","AutoKillWhenDieVehicle"],interpolation_duration:30,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:33023},CustomModelData:20366}}}]}]}
