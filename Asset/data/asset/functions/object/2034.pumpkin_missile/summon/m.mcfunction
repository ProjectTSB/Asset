#> asset:object/2034.pumpkin_missile/summon/m
#
# @input args
#   Rotation : double @ 2
#
# @within function asset:object/2034.pumpkin_missile/summon/

    $summon minecraft:item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],interpolation_duration:16,teleport_duration:1,item:{id:"jack_o_lantern",Count:1b},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}}
