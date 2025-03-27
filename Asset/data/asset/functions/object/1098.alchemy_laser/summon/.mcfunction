#> asset:object/1098.alchemy_laser/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1098/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],brightness:{sky:15,block:15},interpolation_duration:1,transformation:{left_rotation:[0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,20f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16711610},CustomModelData:20376}}}
