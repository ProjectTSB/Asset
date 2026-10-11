#> asset:object/1200.starlight_circle/tick/spin/apply
#
# 回転段階に対応する角度へ補間する
#
# @within function asset:object/1200.starlight_circle/tick/spin

# 回転を補間する
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set from storage asset:context this.SpinInterval

# 水平な姿勢を保ち、画像の面内で回転させる
    execute if data storage asset:context this{Spin:3} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:2} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,1.0f,0.0f]
    execute if data storage asset:context this{Spin:1} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,-0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:0} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]
