#> asset:object/2164.haruclaire_slash_vfx/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2164.haruclaire_slash_vfx/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["AK.Object","ObjectInit"],Rotation:$(Rotation),interpolation_duration:3,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,20f,50f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20518}},Passengers:[{id:"item_display",Rotation:$(Rotation),Tags:["AK.Object"],interpolation_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,10f,50f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20518}}}]}
