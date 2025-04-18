#> asset:object/2177.behemoth_flaredive/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2177/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit","BE.Object"],interpolation_duration:3,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,50f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20455}}}
