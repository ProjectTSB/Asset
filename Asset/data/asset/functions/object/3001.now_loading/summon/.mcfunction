#> asset:object/3001.now_loading/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/3001/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Glowing:0b,billboard:"center",Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[-2f,2f,0.0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20569}}}
