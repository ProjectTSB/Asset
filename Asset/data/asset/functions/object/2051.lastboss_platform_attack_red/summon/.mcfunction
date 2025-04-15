#> asset:object/2051.lastboss_platform_attack_red/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2051/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {interpolation_duration:30,Tags:["ObjectInit"],Rotation:[0F,90F],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.01f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16711680},CustomModelData:20085}}}
