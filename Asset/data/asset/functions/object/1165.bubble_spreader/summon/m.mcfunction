#> asset:object/1165.bubble_spreader/summon/m
#
# マクロで召喚する
#
# @input args:
#   Rotation :
# @within function asset:object/1165.bubble_spreader/summon/
# 見た目は仮(泡のテクスチャ作ってもらう予定)
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation),item:{id:"minecraft:glass",Count:1b},transformation:{translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1}
