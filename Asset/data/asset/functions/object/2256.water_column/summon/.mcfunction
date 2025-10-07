#> asset:object/2256.water_column/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2256/summon

# 元となるEntityを召喚する
# Object 2001ではbrightnessが設定されているが、使用したくないため
    summon item_display ~ ~ ~ {interpolation_duration:0,Rotation:[90f,0f],Tags:["ObjectInit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.1f]}}
