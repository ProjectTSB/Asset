#> asset:object/2217.karmic_conviction_bone/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2217/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[6f,6f,6f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20349}}}
