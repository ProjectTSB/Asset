#> asset:object/2168.general_long_laser/tick/transform
#
#
#
# @within function asset:object/2168.general_long_laser/tick/


# 指定されたinterpolation_durationに設定
    data modify entity @s interpolation_duration set from storage asset:context this.Interpolation

# translationZ
#    data modify entity @s transformation.translation[2] set from storage asset:context this.TranslationZ

# Lengthぶんのびる
    data modify entity @s transformation.scale[1] set from storage asset:context this.Length
