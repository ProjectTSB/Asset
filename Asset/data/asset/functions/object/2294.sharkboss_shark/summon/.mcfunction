#> asset:object/2294.sharkboss_shark/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2294/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20612}}}
