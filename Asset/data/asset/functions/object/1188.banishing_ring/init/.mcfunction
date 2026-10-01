#> asset:object/1188.banishing_ring/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1188/init

# transformationを設定
    data modify entity @s transformation.scale set value [0.0f,0.0f,0.0f]
    data modify entity @s transformation.translation set value [0.0f,0.01f,0.0f]
    data modify entity @s transformation.left_rotation set value {axis:[1.0f, 0.0f, 0.0f], angle:1.5708f}

    data modify entity @s start_interpolation set value 2
