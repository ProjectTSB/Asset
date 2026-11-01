#> asset:object/2279.magic_circle/tick/spin/apply
#
# 本体とPassengerを回転段階に対応する角度へ補間する
#
# @within function asset:object/2279.magic_circle/tick/spin/rotate

# 両面の補間設定と変化先を組み立てる
    data modify storage asset:temp Args set value {Front:{start_interpolation:0,transformation:{}},Back:{start_interpolation:0,transformation:{}}}
    data modify storage asset:temp Args.Front.interpolation_duration set from storage asset:context this.SpinInterval
    data modify storage asset:temp Args.Back.interpolation_duration set from storage asset:context this.SpinInterval

# 表面と裏面に逆向きの局所回転を設定し、空間上の回転方向を揃える
    execute if data storage asset:context this{Spin:3,LeftRotate: true} run data modify storage asset:temp Args.Front.transformation.right_rotation set value [0.0f,0.0f,-0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:3,LeftRotate: true} run data modify storage asset:temp Args.Back.transformation.right_rotation set value [0.0f,0.0f,0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:3,LeftRotate:false} run data modify storage asset:temp Args.Front.transformation.right_rotation set value [0.0f,0.0f,0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:3,LeftRotate:false} run data modify storage asset:temp Args.Back.transformation.right_rotation set value [0.0f,0.0f,-0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:2} run data modify storage asset:temp Args.Front.transformation.right_rotation set value [0.0f,0.0f,1.0f,0.0f]
    execute if data storage asset:context this{Spin:2} run data modify storage asset:temp Args.Back.transformation.right_rotation set value [0.0f,0.0f,-1.0f,0.0f]
    execute if data storage asset:context this{Spin:1,LeftRotate: true} run data modify storage asset:temp Args.Front.transformation.right_rotation set value [0.0f,0.0f,0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:1,LeftRotate: true} run data modify storage asset:temp Args.Back.transformation.right_rotation set value [0.0f,0.0f,-0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:1,LeftRotate:false} run data modify storage asset:temp Args.Front.transformation.right_rotation set value [0.0f,0.0f,-0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:1,LeftRotate:false} run data modify storage asset:temp Args.Back.transformation.right_rotation set value [0.0f,0.0f,0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:0} run data modify storage asset:temp Args.Front.transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]
    execute if data storage asset:context this{Spin:0} run data modify storage asset:temp Args.Back.transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]

# 出現時と消失時は回転と同じNBTへScaleを追加する
    execute if data storage asset:context this{Phase:"Waiting"} run function asset:object/2279.magic_circle/tick/spin/appear
    execute if data storage asset:context this{Phase:"Disappearing"} run function asset:object/2279.magic_circle/tick/disappear/apply

# 組み立てたNBTを各面へ一度で反映する
    function asset:object/2279.magic_circle/tick/spin/merge.m with storage asset:temp Args
    data remove storage asset:temp Args
