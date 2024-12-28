#> asset:object/2153.haruclaire_thrown_rod/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2153.haruclaire_thrown_rod/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit","AK.Object"],Rotation:$(Rotation),interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:[0.8660f,0.5000f,0.0000f,0.0000f,-0.5000f,0.8660f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20331}}}
