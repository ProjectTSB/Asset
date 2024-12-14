#> asset:object/1065.hex_sting/summon/m
#
#
#
# @input args
#   Rotation: [float] @ 2
# @within function asset:object/1065.hex_sting/summon/

$summon item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit","Projectile"],teleport_duration:1,item:{id:"stone",Count:1b,tag:{CustomModelData:20054}}}
