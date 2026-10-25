#> asset:object/2001.custom_effect/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2001/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {interpolation_duration:0,Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.1f]}}
