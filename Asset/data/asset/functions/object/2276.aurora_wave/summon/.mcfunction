#> asset:object/2276.aurora_wave/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2276/summon

# 元となるEntityを召喚する
    summon minecraft:item_display ~ ~ ~ {Tags:["ObjectInit"],brightness:{sky:15,block:15},item:{id:"stick",Count:1b,tag:{CustomModelData:20602}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[4.5f,0f,4.5f],translation:[0f,0f,0f]}}
