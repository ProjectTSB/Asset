#> asset:artifact/0605.ambition/trigger/vfx/recursive
#
# 再帰して演出
#
# @within function
#   asset:artifact/0605.ambition/trigger/vfx/
#   asset:artifact/0605.ambition/trigger/vfx/recursive

# ランダムな方向へ演出
    execute store result entity @s Rotation[0] float 1.0 run random value 0..359
    execute store result entity @s Rotation[1] float 1.0 run random value 0..359
    execute at @s run function asset:artifact/0605.ambition/trigger/vfx/circle

# 再帰
    scoreboard players remove $Count Temporary 1
    execute if score $Count Temporary matches 1.. run function asset:artifact/0605.ambition/trigger/vfx/recursive
