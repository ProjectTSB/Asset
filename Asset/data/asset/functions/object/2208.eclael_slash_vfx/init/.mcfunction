#> asset:object/2208.eclael_slash_vfx/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2208/init

# left_rotationをランダムに設定
    execute store result storage asset:temp 2208.Angle float 0.01 run random value -150..150
    function asset:object/2208.eclael_slash_vfx/init/set_rotation.m with storage asset:temp 2208
    data remove storage asset:temp 2208
