#> asset:object/2045.lastboss_hell_fire/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2045/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {teleport_duration:1,billboard:"center",Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,1f]},item:{id:"minecraft:fire_charge",Count:1b}}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
