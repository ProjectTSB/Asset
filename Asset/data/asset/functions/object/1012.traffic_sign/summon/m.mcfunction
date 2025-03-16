#> asset:object/1012.traffic_sign/summon/m
#
# @input args:
#   Rotation0 : float
#   Angle : float
# @within function asset:object/1012.traffic_sign/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:[$(Rotation0)f,0.0f],teleport_duration:1,transformation:{left_rotation:{axis:[0,0,1],angle:$(Angle)},right_rotation:[0f,0f,0f,1f],translation:[0f,20f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:606}}}
