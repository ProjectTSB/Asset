#> asset:object/2036.falling_pumpkin_bomb/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2036/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:[0.0f,90.0f],interpolation_duration:1,teleport_duration:3,item:{id:"carved_pumpkin",Count:1b,tag:{CustomModelData:20344}},transformation:[0.5f,0.0f,0.0f,0.0f,0.0f,0.0f,0.5f,0.0f,0.0f,-0.5f,0.0f,0.0f,0.0f,0.0f,0.0f,1f]}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
