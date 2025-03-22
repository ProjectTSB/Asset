#> asset:object/2187.heiloang_ff_main/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2187/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit","BE.Object"],view_range:16f,interpolation_duration:15,billboard:"center",alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[12f,12f,1f]},text:'{"text":"0","font":"object/2187/0"}',background:16711680}
