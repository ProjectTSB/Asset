#> asset:artifact/0605.ambition/trigger/vfx/recursive
#
# 再帰して演出
#
# @within function
#   asset:artifact/0605.ambition/trigger/vfx/
#   asset:artifact/0605.ambition/trigger/vfx/recursive

# ランダムな方向へ演出
    execute store result storage asset:temp Rotate.Yaw int 1 run random value 0..359
    execute store result storage asset:temp Rotate.Pitch int 1 run random value 0..359
    function asset:artifact/0605.ambition/trigger/vfx/rotate.m with storage asset:temp Rotate
    data remove storage asset:temp Rotate

# 再帰
    scoreboard players remove $Count Temporary 1
    execute if score $Count Temporary matches 1.. run function asset:artifact/0605.ambition/trigger/vfx/recursive
