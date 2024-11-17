#> asset:object/2061.silver_gear/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2061/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.05f,0f],scale:[1.5f,0.05f,1.5f]},Tags:["ObjectInit"]}
