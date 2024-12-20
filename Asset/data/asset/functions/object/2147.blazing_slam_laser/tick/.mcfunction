#> asset:object/2147.blazing_slam_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2147/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 雷が落ちてくる
    execute if score @s General.Object.Tick matches 20 run function asset:object/2147.blazing_slam_laser/tick/thunder

# 縮む
    execute if score @s General.Object.Tick matches 22 run function asset:object/2147.blazing_slam_laser/tick/transform/2

# しばらくしたらキル
    execute if score @s General.Object.Tick matches 24 run kill @s
