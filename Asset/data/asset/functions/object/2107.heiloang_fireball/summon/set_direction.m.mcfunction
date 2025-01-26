#> asset:object/2107.heiloang_fireball/summon/set_direction.m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2107.heiloang_fireball/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit","BE.Object"],Rotation:$(Rotation),teleport_duration:3,start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20454}}}
