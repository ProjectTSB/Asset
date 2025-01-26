#> asset:object/2168.general_long_laser/tick/transform/disappear
#
#
#
# @within function asset:object/2168.general_long_laser/tick/

# 指定されたinterpolation_durationに設定
    data modify entity @s interpolation_duration set from storage asset:context this.DisappearInterpolation

# Y以外が小さくなっていく
    data modify entity @s transformation.scale[0] set value 0.0f
    data modify entity @s transformation.scale[2] set value 0.0f
