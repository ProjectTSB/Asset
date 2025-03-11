#> asset:object/1005.terra_sword/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1005.terra_sword/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Glowing:1b,glow_color_override:10000,Rotation:$(Rotation),Tags:["ObjectInit"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20185},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f]}}}
