#> asset:object/2078.dark_bullet/summon/.m
#
# マクロを使って召喚する
#
# @input args:
#   Rotation : double @ 2
# @within function asset:object/2078.dark_bullet/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation),teleport_duration:1,item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20216}},billboard:center,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
