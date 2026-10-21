#> asset:object/2168.general_long_laser/summon/.m
#
#
#
# @within function asset:object/2168.general_long_laser/summon/

# 初期回転を設定し、大きさ0で表示を召喚
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:$(LeftRotation),right_rotation:$(RightRotation),translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:$(Color)},CustomModelData:$(CustomModelData)}}}
