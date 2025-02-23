#> asset:object/2208.eclael_slash_vfx/init/set_rotation.m
#
# Objectのinit時の処理
#
# @within asset:object/2208.eclael_slash_vfx/init/

# left_rotationをランダムに設定
    $execute unless entity @s[tag=2208.IsLand] run data modify entity @s transformation.left_rotation set value {axis:[0,0,1],angle:$(Angle)f}
    $execute if entity @s[tag=2208.IsLand] run data modify entity @s Rotation set value [$(Angle)f,0f]
