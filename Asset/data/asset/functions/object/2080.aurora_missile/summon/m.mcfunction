#> asset:object/2080.aurora_missile/summon/m
#
# マクロを使って召喚する
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/2080.aurora_missile/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],teleport_duration:1,item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20601}},brightness:{sky:15,block:15},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.2f,1.2f,1.2f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
