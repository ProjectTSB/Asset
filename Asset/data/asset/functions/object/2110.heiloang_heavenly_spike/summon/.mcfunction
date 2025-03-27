#> asset:object/2110.heiloang_heavenly_spike/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2110/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit","BE.Object"],interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-3f,0f],scale:[0.0f,0.0f,0.0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20332}}}
