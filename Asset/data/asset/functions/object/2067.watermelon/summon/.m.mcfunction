#> asset:object/2067.watermelon/summon/.m
#
# マクロを使って召喚する
#
# @input args:
#   Rotation : double @ 2
# @within function asset:object/2067.watermelon/summon/

# 召喚
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,item:{id:"minecraft:melon",Count:1b},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
