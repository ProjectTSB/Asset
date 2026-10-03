#> asset:object/1194.wooden_snake_bite/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1194/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit"],billboard:"center",background:16711680,brightness:{sky:15,block:15}}
    #,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[4f,6f,0f],translation:[0f,-0.48f,0f]}
