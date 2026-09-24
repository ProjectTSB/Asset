#> asset:object/1165.bubble_spreader/summon/m
#
# マクロで召喚する
#
# @input args:
#   Rotation :
# @within function asset:object/1165.bubble_spreader/summon/
# 見た目は仮(泡のテクスチャ作ってもらう予定)
    $summon item_display ~ ~ ~ {brightness:{sky:15,block:15},billboard:"center",Tags:["ObjectInit"],Rotation:$(Rotation),item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20663}},transformation:{translation:[0f,0f,0f],scale:[$(Size)f,$(Size)f,$(Size)f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1}
