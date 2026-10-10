#> asset:object/1199.ocean_heart_vfx/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1199/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:[0f,-90f],brightness:{sky:15,block:15},interpolation_duration:5,text:'{"text":"0","font":"object/1199"}'}
