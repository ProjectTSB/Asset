#> asset:object/2271.moving_circle_damage_area/init/set_transformation
#
# Objectのinit時の処理
#
# @within asset:object/2271.moving_circle_damage_area/init/

# transformation更新
    $data modify entity @s transformation set value {left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0f,0f,$(Offset)f],scale:[$(ScaleY)f,$(ScaleX)f,0.0f]}
    $tp @s ^ ^ ^$(PosOffset) ~-90 0
