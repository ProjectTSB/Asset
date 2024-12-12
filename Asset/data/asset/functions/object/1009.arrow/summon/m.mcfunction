#> asset:object/1009.arrow/summon/m
#
#
#
# @input args
#   Rotation: [float] @ 2
#   Color: int
# @within function asset:object/1009.arrow/summon/

$summon item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:$(Color),display:{color:8454016}}},teleport_duration:1}
