#> asset:object/2256.water_column/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2256/summon

# 元となるEntityを召喚する
# TODO: 見た目のために角度を変えているが、マイクラのverが上がったら角度を変える必要あり(シェーディングの仕様が変わるため)
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:[90f,0f],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20570}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[4f,4f,4f],translation:[0f,2f,0f]}}
