#> asset:object/2158.haruclaire_death/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2158/summon

# 元となるEntityを召喚する
    summon block_display ~ ~ ~ {Tags:["ObjectInit"],interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-0.6f,-1f],scale:[0f,0f,0f]},block_state:{Name:"minecraft:ice"}}
