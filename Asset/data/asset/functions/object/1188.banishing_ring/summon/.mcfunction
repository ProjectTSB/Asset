#> asset:object/1188.banishing_ring/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1188/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],item:{id:"minecraft:stick", Count:1b, tag:{CustomModelData:20650}}, brightness:{block:15,sky:15}, interpolation_duration:2, transformation:{scale:[0.0f, 0.0f, 0.0f], translation: [0.0f, 0.01f, 0.0f], right_rotation: {axis:[0.0f, 0.0f, 0.0f], angle:0.0f}, left_rotation:{axis:[1.0f, 0.0f, 0.0f], angle:1.5708f}}, start_interpolation:3}
