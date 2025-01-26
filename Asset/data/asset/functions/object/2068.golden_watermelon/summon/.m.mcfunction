#> asset:object/2068.golden_watermelon/summon/.m
#
# マクロを使って召喚する
#
# @input args:
#   Rotation : dobule @ 2
# @within function asset:object/2068.golden_watermelon/summon/

# 召喚
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],teleport_duration:1,item:{id:"minecraft:melon",Count:1b,tag:{Enchantments:[{}]},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}}
