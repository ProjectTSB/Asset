#> asset:object/2036.falling_pumpkin_bomb/summon/.m
#
# マクロで向きを合わせて召喚する
#
# @within function asset:object/2036.falling_pumpkin_bomb/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:[$(RotationX).0f,90.0f],interpolation_duration:1,teleport_duration:3,item:{id:"carved_pumpkin",Count:1b,tag:{CustomModelData:20344}},transformation:[0.5f,0.0f,0.0f,0.0f,0.0f,0.0f,0.5f,0.0f,0.0f,-0.5f,0.0f,0.0f,0.0f,0.0f,0.0f,1f]}
