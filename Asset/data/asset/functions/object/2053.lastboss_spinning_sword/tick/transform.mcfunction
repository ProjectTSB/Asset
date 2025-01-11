#> asset:object/2053.lastboss_spinning_sword/tick/transform
#
#
#
# @within function asset:object/2053.lastboss_spinning_sword/tick/

#> 行き先マーカー
# @private
#declare tag FacingMarker

# 伸びる
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set value 2
    data modify entity @s transformation.scale set value [1.0f,1.0f,1.0f]
