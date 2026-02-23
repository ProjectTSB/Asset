#> asset:object/2257.thundercloud/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2257/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit"],billboard:"vertical",alignment:"center",brightness:{sky:15,block:15},text:'{"text":"0","font":"object/2257/0"}',background:16711680,Passengers:[{id:"item_display",Tags:["AutoKillWhenDieVehicle","ProcessCommonTag"],billboard:"vertical",item:{id:"stick",Count:1b,tag:{CustomModelData:20586}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,1.2f,0f]}}]}
