#> asset:object/2053.lastboss_spinning_sword/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2053/summon

# 元となるEntityを召喚する
#    summon item_display ~ ~ ~ {teleport_duration:1,Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[-0.7f,0f,0f,0.7f],right_rotation:[0f,0f,0f,1f],translation:[0f,10f,0f],scale:[1f,1f,0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:20376}}}

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Rotation:[0.0f,90.0f],teleport_duration:1,Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0.5f,0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.25f],scale:[0f,0f,0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:9759487},CustomModelData:20084}}}
