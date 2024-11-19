#> asset:object/1040.thelema_persuit_sword/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1040/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:[0.0f,90.0f],teleport_duration:1,item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20344}},billboard:vertical,transformation:[0.7071f,0.7071f,0.0f,0.0f,0.0f,-0.0f,-1.0f,0.0f,-0.7071f,0.7071f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]}
