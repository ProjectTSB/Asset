#> asset:object/2005.thunder_bomb/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2005/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:0,Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[2f,2f,2f]},item:{id:"stick",Count:1b,tag:{CustomModelData:20371}}}
