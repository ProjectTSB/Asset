#> asset:object/2206.eclael_thunder/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2206/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit","BE.Object"],billboard:"vertical",alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[6f,6f,1f]},text:'{"text":"0","font":"object/2206/0"}',background:16711680,Passengers:[{id:"minecraft:text_display",billboard:"fixed",alignment:"center",brightness:{sky:15,block:15},transformation:[3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,3.0000f,-0.1875f,0.0000f,-3.0000f,-0.0000f,5.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"0","font":"object/2206/1"}',background:16711680}]}
