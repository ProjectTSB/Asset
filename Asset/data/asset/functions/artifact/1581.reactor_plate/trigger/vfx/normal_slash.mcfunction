#> asset:artifact/1581.reactor_plate/trigger/vfx/normal_slash
#
# 攻撃演出
#
# @within function asset:artifact/1581.reactor_plate/trigger/3.main


    # 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:16729344,Frames:[20335,20336,20337],Scale:[3f,3f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    function api:object/summon
