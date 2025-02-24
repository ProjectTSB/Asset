#> asset:object/1089.cosmo_beam/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1089/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],brightness:{sky:15,block:15},interpolation_duration:1,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,400f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20384}}}
