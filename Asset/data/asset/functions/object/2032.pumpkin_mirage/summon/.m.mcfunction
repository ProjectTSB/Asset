#> asset:object/2032.pumpkin_mirage/summon/.m
#
# マクロを使って召喚する
#
# @input args:
#   RotationX : double
# @within function asset:object/2032.pumpkin_mirage/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Rotation:[$(RotationX),0.0f],Tags:["ObjectInit"],item:{id:"stick",Count:1b,tag:{CustomModelData:20396}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
