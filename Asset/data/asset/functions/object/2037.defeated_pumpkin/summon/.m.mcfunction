#> asset:object/2037.defeated_pumpkin/summon/.m
#
# @input args:
#   RotationX : double
#
# @within function asset:object/2037.defeated_pumpkin/summon/

    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:[$(RotationX)f,90.0f],interpolation_duration:0,teleport_duration:1,item:{id:"carved_pumpkin",Count:1b,tag:{CustomModelData:20344}},transformation:[1.0f,0.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,-1.0f,0.0f,0.0f,0.0f,0.0f,0.0f,1f]}
