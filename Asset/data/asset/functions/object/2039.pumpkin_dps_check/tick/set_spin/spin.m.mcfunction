#> asset:object/2039.pumpkin_dps_check/tick/set_spin/spin.m
#
#
#
# @within function
#   asset:object/2039.pumpkin_dps_check/tick/set_spin/m
#   asset:object/2039.pumpkin_dps_check/tick/set_spin/with_sound.m

#
   $data modify storage asset:context this.SpinInterval set value $(Interpolation)

# start_interpolationを設定
    data modify entity @s start_interpolation set value 0

# interpolation_durationを設定
    $data modify entity @s interpolation_duration set value $(Interpolation)

# Spinのデクリメント
    execute store result storage asset:context this.Spin int 0.9999999999 run data get storage asset:context this.Spin

# スコアに応じてtransformationをセット
    execute if data storage asset:context this{Spin:3} run data modify entity @s transformation.left_rotation set value [0.7071f,0f,0f,0.7071f]
    execute if data storage asset:context this{Spin:2} run data modify entity @s transformation.left_rotation set value [1f,0f,0f,0f]
    execute if data storage asset:context this{Spin:1} run data modify entity @s transformation.left_rotation set value [-0.7071f,0f,0f,0.7071f]
    execute if data storage asset:context this{Spin:0} run data modify entity @s transformation.left_rotation set value [0f,0f,0f,1f]

# スコアをリセット
    execute if data storage asset:context this{Spin:0} run data modify storage asset:context this.Spin set value 4
