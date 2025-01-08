#> asset:object/2090.magic_square/summon/.m
#
# マクロで召喚する
#
# @input args:
#   Rotation : double @ 2
# @within function asset:object/2090.magic_square/summon/

    $summon minecraft:item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],interpolation_duration:15,teleport_duration:1,item:{id:"leather_horse_armor",Count:1b,tag:{CustomModelData:$(CMD),display:{color:$(Color)}}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}
