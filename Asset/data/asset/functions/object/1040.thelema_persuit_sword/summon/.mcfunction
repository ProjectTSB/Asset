#> asset:object/1040.thelema_persuit_sword/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1040/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20344}},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
