#> asset:object/1097.celestial_star/summon/m
# @input args
#   Rotation: [float] @ 2
# @within function asset:object/1097.celestial_star/summon/

$summon item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],item:{id:"nether_star",Count:1b},brightness:{sky:15,block:15},transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},billboard:"center",teleport_duration:1}
