#> asset:object/1113.soulfire_sword/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1113/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {start_interpolation:0,Tags:["ObjectInit"],item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:301}},transformation:{left_rotation:[0.9238f,0.3827f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,5f,0f],scale:[2f,2f,2f]}}
