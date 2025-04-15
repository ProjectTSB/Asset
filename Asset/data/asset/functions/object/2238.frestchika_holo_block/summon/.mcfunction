#> asset:object/2238.frestchika_holo_block/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2238/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.001f,1.001f,1.001f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20517}}}
