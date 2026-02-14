#> asset:object/2263.gem_laser_vfx/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2263.gem_laser_vfx/summon/

# 元となるEntityを召喚する
    $summon minecraft:item_display ~ ~ ~ {Rotation:$(Rotation),brightness:{sky:15,block:15},Tags:["ObjectInit"],interpolation_duration:3,teleport_duration:1,item:{id:"stick",Count:1b,tag:{CustomModelData:20588}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,50.0f]}}
