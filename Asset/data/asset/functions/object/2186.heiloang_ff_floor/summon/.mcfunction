#> asset:object/2186.heiloang_ff_floor/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2186/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit","BE.Object"],view_range:16f,text_opacity:255,alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0.7071f,0f,0f,-0.7071f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,0f],scale:[2.5f,2.5f,0.1f]},text:'{"text":"0","font":"object/2186/0"}',background:16711680}
