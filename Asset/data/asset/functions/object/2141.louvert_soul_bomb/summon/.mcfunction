#> asset:object/2141.louvert_soul_bomb/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2141/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {teleport_duration:1,Tags:["ObjectInit"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20341}},Passengers:[{id:"minecraft:text_display",Tags:["2141.TextInit"],billboard:"center",default_background:0b,see_through:1b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[2f,2f,2f]},text:'{"text":"10","font":"magic"}',background:16777215}]}
