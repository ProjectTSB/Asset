#> asset:object/2198.rubiel_scythe/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2198.rubiel_scythe/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation),interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20475}}}
