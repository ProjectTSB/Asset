#> asset:object/1110.heavy_lava_bomb/summon/m
#
# @input args:
#   Rotation0 : float
#   Rotation1 : float
# @within function asset:object/1110.heavy_lava_bomb/summon/

# 元となるEntityを召喚する
    $summon snowball ~ ~ ~ {Rotation:[$(Rotation0)f,$(Rotation1)f],Silent:1b,Tags:["Uninterferable"],Item:{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}},Passengers:[{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,Tags:["ObjectInit"],Rotation:[$(Rotation0)f,0.0f],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:20506,display:{color:12863764}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],transformation:[0f,0f,0f]}}]}
