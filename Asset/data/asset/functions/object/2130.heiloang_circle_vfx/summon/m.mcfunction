#> asset:object/2130.heiloang_circle_vfx/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2130.heiloang_circle_vfx/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),interpolation_duration:12,Tags:["ObjectInit","BE.Object","BE.Circle"],alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.5f],scale:[0f,0f,0f]},item:{id:"leather_horse_armor",Count:1b,tag:{CustomModelData:20469,display:{color:$(Color)}}},Passengers:[{id:"minecraft:item_display",interpolation_duration:8,Rotation:$(Rotation),alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"leather_horse_armor",Count:1b,tag:{CustomModelData:20468,display:{color:$(Color)}}}}]}
