#> asset:object/2009.magic_bullet/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2009/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],interpolation_duration:30,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16772885},CustomModelData:20364}},Passengers:[{id:"item_display",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle"],interpolation_duration:30,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16772885},CustomModelData:20365}},Passengers:[{id:"item_display",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle"],interpolation_duration:30,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16772885},CustomModelData:20366}}}]}]}
