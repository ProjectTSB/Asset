#> asset:object/2031.giant_pumpkin/summon/.m
#
# @input args:
#   Rotation : double @ 2
#   FaceID : int
#
# @within function asset:object/2031.giant_pumpkin/summon/

# 召喚する
    $summon minecraft:item_display ~ ~ ~ {Rotation:[$(RotationX)f,0.0f],Tags:["ObjectInit"],interpolation_duration:16,teleport_duration:1,item:{id:"carved_pumpkin",Count:1b,tag:{CustomModelData:$(FaceID)}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
