#> asset:object/1160.blue_prism/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1160/init

# Rotationをランダムにする
    execute store result storage asset:temp Args.Yaw float 0.01 run random value 0..35999
    execute store result storage asset:temp Args.Pitch float 0.01 run random value -6000..1500
    function asset:object/1160.blue_prism/init/set_rotation with storage asset:temp Args
    data remove storage asset:temp Args

# Passengersも合わせる
    execute at @s on passengers run tp @s ~ ~ ~ ~ ~
