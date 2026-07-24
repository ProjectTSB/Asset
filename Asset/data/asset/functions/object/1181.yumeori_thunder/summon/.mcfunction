#> asset:object/1181.yumeori_thunder/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1181/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit"],text:'{"text":"0","font":"object/1180"}',billboard:"vertical",alignment:"center",brightness:{sky:15,block:15},background:16711680,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[5f,5f,5f],translation:[0f,2.5f,0f]}}
