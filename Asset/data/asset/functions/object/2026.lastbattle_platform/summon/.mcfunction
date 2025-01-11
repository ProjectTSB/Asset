#> asset:object/2026.lastbattle_platform/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2026/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {view_range:1f,interpolation_duration:5,Tags:["ObjectInit"],Rotation:[0F,90F],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:10790052},CustomModelData:20083}}}
