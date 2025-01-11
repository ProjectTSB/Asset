#> asset:object/2007.nova/tick/move/1
#
# ノヴァを大きくする
#
# @within function asset:object/2007.nova/tick/

# 見た目を変更する
    data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,15f,0f],scale:[0f,0f,0f]}}
    execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0.2391f,0.0990f,-0.3696f,0.8924f],right_rotation:[0f,0f,0f,1f],translation:[0f,15f,0f],scale:[5.5f,11f,11f]}}
    execute on passengers on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0.2391f,-0.0990f,0.3696f,0.8924f],right_rotation:[0f,0f,0f,1f],translation:[0f,15f,0f],scale:[5.5f,11f,11f]}}
    execute on passengers on passengers on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0.1830f,0.6830f,0.1830f,0.6830f],right_rotation:[0f,0f,0f,1f],translation:[0f,15f,0f],scale:[5.5f,11f,11f]}}

# Novaの見た目（billboard）を召喚
    summon item_display ~ ~15 ~ {Tags:["2007.Nova"],billboard:"center",start_interpolation:0,teleport_duration:2,interpolation_duration:5,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20373}}}
