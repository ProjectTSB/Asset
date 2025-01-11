#> asset:object/2008.disaster_divine/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2008/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:1,Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,25f],scale:[0.1f,0.1f,50f]},item:{id:"orange_stained_glass",Count:1b}}
