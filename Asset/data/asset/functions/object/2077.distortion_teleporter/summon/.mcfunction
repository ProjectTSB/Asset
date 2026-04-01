#> asset:object/2077.distortion_teleporter/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2077/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:[0f,90f],brightness:{sky:15,block:15},teleport_duration:1,interpolation_duration:3,item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20585}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],translation:[0f,0f,0f]}}
