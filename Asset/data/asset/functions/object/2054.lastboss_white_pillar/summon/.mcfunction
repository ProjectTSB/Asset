#> asset:object/2054.lastboss_white_pillar/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2054/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:1,Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[-0.7f,0f,0f,0.7f],right_rotation:[0f,0f,0f,1f],translation:[0f,19.5f,0f],scale:[0f,0f,40f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:20376}}}
