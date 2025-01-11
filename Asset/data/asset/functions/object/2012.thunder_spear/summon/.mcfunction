#> asset:object/2012.thunder_spear/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2012/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],interpolation_duration:0,teleport_duration:0,Passengers:[{id:"item_display",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle"],interpolation_duration:10,teleport_duration:10,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,1f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,20f,0f],scale:[0f,0f,0f]},item:{id:"stick",Count:1b,tag:{CustomModelData:20374}}}]}
