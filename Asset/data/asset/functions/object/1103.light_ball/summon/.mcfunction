#> asset:object/1103.light_ball/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1103/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],Glowing:1b,transformation:[0.55f,0f,0f,0f,0f,0.55f,0f,0f,0f,0f,0.55f,0f,0f,0f,0f,1f],item:{id:"leather_horse_armor",Count:1b,tag:{display:{color:16773970},CustomModelData:20157}},brightness:{sky:10,block:15},billboard:"center"}
