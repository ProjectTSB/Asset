#> asset:object/2190.eclael_slashbeam/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2190.eclael_slashbeam/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["93.Object","ObjectInit"],Rotation:$(Rotation),teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:{axis:[0,0,1],angle:$(Angle)},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20536}}}
