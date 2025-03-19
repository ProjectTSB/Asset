#> asset:object/1118.ember_fire/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1118/summon

# 元となるEntityを召喚する
    summon block_display ~ ~ ~ {Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,7f,0f]},block_state:{Name:"minecraft:fire"}}
