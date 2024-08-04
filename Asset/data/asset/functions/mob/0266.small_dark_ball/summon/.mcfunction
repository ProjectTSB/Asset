#> asset:mob/0266.small_dark_ball/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0266.small_dark_ball/_/summon

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {Tags:["MobInit"],teleport_duration:1,item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20216}},billboard:center,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
