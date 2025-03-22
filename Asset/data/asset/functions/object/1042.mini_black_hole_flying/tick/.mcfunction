#> asset:object/1042.mini_black_hole_flying/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1042/tick

# 演出のためにランダムな方向を向かせる
    execute store result storage asset:temp Args.Yaw float 0.01 run random value 0..35999
    execute store result storage asset:temp Args.Pitch float 0.01 run random value 0..35999

# 演出
    function asset:object/1042.mini_black_hole_flying/tick/vfx/m with storage asset:temp Args

# リセット
    data remove storage asset:temp Args

# super.tick
    execute at @s run function asset:object/super.tick
