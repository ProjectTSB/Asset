#> asset:object/2109.heiloang_adamant_spike/summon/set_direction.m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2109.heiloang_adamant_spike/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit","BE.Object"],Rotation:$(Rotation),interpolation_duration:10,teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20332}}}
