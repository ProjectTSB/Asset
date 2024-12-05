#> asset:object/2070.potion/summon/.m
#
# マクロを使って召喚する
#
# @input args:
#   Rotation : double @ 2
#   PotionColor : int
# @within function asset:object/2070.potion/summon/

# 召喚
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],teleport_duration:1,billboard:"center",item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:$(PotionColor)}}}
