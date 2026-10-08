#> asset:object/1169.plasma_beam/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1169.plasma_beam/summon/

    $summon item_display ~ ~ ~ {Rotation: $(Rotation),Tags:["ObjectInit"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20630}},brightness:{block:15,sky:15},teleport_duration:1}
