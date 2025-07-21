#> asset:object/2210.eclael_land_slash/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2210.eclael_land_slash/summon/

# 元となるEntityを召喚する
    $summon text_display ~ ~ ~ {Tags:["93.Object","ObjectInit"],Rotation:[$(Rotation)f,0f],interpolation_duration:3,alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:{axis:[1,0,0],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,1f,0f]},text:'[{"text":"0","font":"object/2208/0"}]',background:16711680}
