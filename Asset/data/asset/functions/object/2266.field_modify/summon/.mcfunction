#> asset:object/2266.field_modify/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2266/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit","CO.Object","CO.Object.FieldModify"],brightness:{sky:15,block:15},interpolation_duration:5,teleport_duration:1,item:{id:"red_stained_glass",Count:1b,tag:{CustomModelData:0}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.1f,0.0f]}}
