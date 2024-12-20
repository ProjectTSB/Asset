#> asset:object/2145.louvert_soul_blast/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2145/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit","2145.SoulBlast"],item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:3211249,CustomModelData:20343}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0.707f,0f,0.707f],translation:[0f,0f,0f],scale:[0.2f,0f,0f]}}
