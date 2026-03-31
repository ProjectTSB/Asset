#> asset:object/2269.gem_rocket_punch/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2269/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {view_range:16f,brightness:{sky:15,block:15},Tags:["ObjectInit","CO.Object"],interpolation_duration:3,teleport_duration:1,item:{id:"stick",Count:1b,tag:{CustomModelData:20589}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}
