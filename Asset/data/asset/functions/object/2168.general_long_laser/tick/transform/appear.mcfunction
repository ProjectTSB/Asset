#> asset:object/2168.general_long_laser/tick/transform/appear
#
#
#
# @within function asset:object/2168.general_long_laser/tick/

# 指定されたinterpolation_durationに設定
    data modify entity @s interpolation_duration set from storage asset:context this.Interpolation

# Scaleの値を放り込む
    data modify entity @s transformation.scale set from storage asset:context this.Scale
