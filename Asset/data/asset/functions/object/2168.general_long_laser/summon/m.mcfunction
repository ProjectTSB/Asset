#> asset:object/2168.general_long_laser/summon/m
#
#
#
# @within function asset:object/2168.general_long_laser/summon/

# 元となるオブジェクトを召喚: ややこしいが、item_displayの上に乗っているmarkerの向きをマクロで変えている
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Passengers:[{id:"minecraft:marker",Rotation:$(Rotation),Tags:["2168.Marker.Rotate"]}],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0f,1f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:20381}}}
