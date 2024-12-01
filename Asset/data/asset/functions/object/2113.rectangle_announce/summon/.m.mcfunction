#> asset:object/2113.rectangle_announce/summon/.m
#
# マクロを使って召喚する
#
# @input args:
#   RotationX : float
# @within function asset:object/2113.rectangle_announce/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:[$(RotationX)f,0.0f],item:{id:$(Item),Count:1b},interpolation_duration:0,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[$(ScaleX)f,0f,0f]}}
