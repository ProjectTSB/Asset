#> asset:object/2279.magic_circle/summon/.m
#
# 実行向きに表面と裏面のtext_displayを召喚する
#
# @input args
#   Rotation : float @ 2
# @within function asset:object/2279.magic_circle/summon/

$summon text_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation),background:0,text:'""',brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],translation:[0f,0f,0f]},Passengers:[{id:"text_display",Rotation:$(Rotation),background:0,text:'""',brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],translation:[0f,0f,0f]}}]}
