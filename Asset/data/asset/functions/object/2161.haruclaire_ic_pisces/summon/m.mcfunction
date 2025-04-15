#> asset:object/2161.haruclaire_ic_pisces/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2161.haruclaire_ic_pisces/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit","AK.Object","AK.IceCreature.Root"],Rotation:$(Rotation),interpolation_duration:6,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:packed_ice",Count:1b}}
