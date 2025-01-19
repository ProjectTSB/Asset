#> asset:object/1081.barrel/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1081/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],item:{id:"minecraft:barrel",Count:1b},Rotation:[0f,90f],teleport_duration:1,transformation:[1.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,-1.0f,0.0625f,0.0f,1.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]}
