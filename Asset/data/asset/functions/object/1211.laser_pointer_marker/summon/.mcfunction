#> asset:object/1211.laser_pointer_marker/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1211/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit", "1211.Marker"],Glowing:1b,brightness:{block:15,sky:15},billboard:"center",glow_color_override:5300043,item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:5300043},CustomModelData:20157}},transformation:[0.55f,0f,0f,0f,0f,0.55f,0f,0f,0f,0f,0.55f,0f,0f,0f,0f,1f]}
