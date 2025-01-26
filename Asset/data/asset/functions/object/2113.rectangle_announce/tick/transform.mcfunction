#> asset:object/2113.rectangle_announce/tick/transform
#
#
#
# @within function asset:object/2113.rectangle_announce/tick/

# start_interpolation
    data modify entity @s start_interpolation set value 0

# 指定されたinterpolation_durationに設定
    data modify entity @s interpolation_duration set from storage asset:context this.Interpolation

# translationZ
    data modify entity @s transformation.translation[2] set from storage asset:context this.TranslationZ

# 指定されたScaleZに変化
# 確かに奥行きではあるのだが、内部的にはyなのである、どうしようね
    data modify entity @s transformation.scale[1] set from storage asset:context this.Scale[1]
