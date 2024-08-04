#> asset:artifact/1065.magic_bullet/trigger/5.summon_square.m
#
#
#
# @within function asset:artifact/1065.magic_bullet/trigger/3.main

# マクロで向きを合わせた状態で召喚
    $execute anchored eyes positioned ^ ^-0.35 ^1 run summon item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["TL.Square","TL.LoopTarget"],interpolation_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20351}}}
