#> asset:object/2031.giant_pumpkin/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2031/summon

# 元となるEntityを召喚する
    summon minecraft:item_display ~ ~ ~ {Tags:["ObjectInit"],interpolation_duration:8,teleport_duration:1,item:{id:"carved_pumpkin",Count:1b},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
