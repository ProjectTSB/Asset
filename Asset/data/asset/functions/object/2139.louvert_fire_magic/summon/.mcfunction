#> asset:object/2139.louvert_fire_magic/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2139/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16753152,CustomModelData:20343}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0f,0.05f,0f],scale:[0f,0.2f,0f]}}
