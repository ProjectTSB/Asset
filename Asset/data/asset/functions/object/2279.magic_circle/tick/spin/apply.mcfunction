#> asset:object/2279.magic_circle/tick/spin/apply
#
# 本体とPassengerを回転段階に対応する角度へ補間する
#
# @within function asset:object/2279.magic_circle/tick/spin/rotate

# 回転を補間する
    data modify entity @s start_interpolation set value 0
    execute on passengers run data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set from storage asset:context this.SpinInterval
    execute on passengers run data modify entity @s interpolation_duration set from storage asset:context this.SpinInterval

# 表面と裏面に逆向きの局所回転を設定し、空間上の回転方向を揃える
    execute if data storage asset:context this{Spin:3,LeftRotate: true} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,-0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:3,LeftRotate: true} on passengers run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:3,LeftRotate:false} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:3,LeftRotate:false} on passengers run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,-0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:2} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,1.0f,0.0f]
    execute if data storage asset:context this{Spin:2} on passengers run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,-1.0f,0.0f]
    execute if data storage asset:context this{Spin:1,LeftRotate: true} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:1,LeftRotate: true} on passengers run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,-0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:1,LeftRotate:false} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,-0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:1,LeftRotate:false} on passengers run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:0} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]
    execute if data storage asset:context this{Spin:0} on passengers run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]
