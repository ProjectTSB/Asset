#> asset:object/1103.light_ball/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1103/summon

# 元となるEntityを召喚する
    summon block_display ~ ~ ~ {Tags:["ObjectInit"],Glowing:1b,brightness:{sky:10,block:15},transformation:[0.18f,0f,0f,-0.09f,0f,0.18f,0f,-0.09f,0f,0f,0.18f,-0.09f,0f,0f,0f,1f],block_state:{Name:"snow_block"}}
