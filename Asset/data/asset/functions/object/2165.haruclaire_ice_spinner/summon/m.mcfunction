#> asset:object/2165.haruclaire_ice_spinner/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2165.haruclaire_ice_spinner/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["AK.Object","ObjectInit"],Rotation:$(Rotation),interpolation_duration:10,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20332}}}
