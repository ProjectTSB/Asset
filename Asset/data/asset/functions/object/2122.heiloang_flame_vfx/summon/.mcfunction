#> asset:object/2122.heiloang_flame_vfx/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2122/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {interpolation_duration:3,teleport_duration:2,Tags:["ObjectInit","2122.Main","BE.Object"],billboard:"vertical",alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},text:'{"text":" "}',background:16711680}
