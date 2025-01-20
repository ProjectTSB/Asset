#> asset:object/2179.behemoth_flame/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2179.behemoth_flame/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit","BE.Object"],Rotation:$(Rotation),teleport_duration:1,start_interpolation:0,interpolation_duration:3,transformation:[3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,0.0000f,-0.0000f,2.5981f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20484}}}
