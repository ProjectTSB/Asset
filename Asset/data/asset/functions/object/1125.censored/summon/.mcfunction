#> asset:object/1125.censored/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1125/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {billboard:"vertical",Tags:["ObjectInit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[3f,3f,3f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20140}}}
