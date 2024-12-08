#> asset:object/2120.heiloang_thunder_vfx/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2120/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit"],billboard:"vertical",alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[6f,6f,1f]},text:'{"text":"0","font":"object/2120/0"}',background:16711680}
