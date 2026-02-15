#> asset:object/2049.lightning_magic/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2049/summon

# 元となるEntityを召喚する
    summon interaction ~ ~ ~ {Tags:["ObjectInit","Uninterferable"],width:0f,height:0f,Rotation:[0f,90f],Passengers:[{id:"text_display",Tags:["AutoKillWhenDieVehicle","ProcessCommonTag"],teleport_duration:1,billboard:"vertical",alignment:"center",brightness:{sky:15,block:15},text:'{"text":"0","font":"object/2049/0"}',background:16711680,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],translation:[0f,1.35f,0f]}},{id:"item_display",Rotation:[90f,0f],Tags:["AutoKillWhenDieVehicle","ProcessCommonTag"],teleport_duration:1,billboard:"vertical",item:{id:"stick",Count:1b,tag:{CustomModelData:20586}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],translation:[0f,3.2f,0f]}}]}
