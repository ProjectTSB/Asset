#> asset:object/2211.eclael_circle_slash/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2211/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit"],interpolation_duration:3,alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,1.5f],scale:[16f,16f,0f]},text:'[{"text":" "}]',background:16711680}
