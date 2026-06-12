#> asset:object/1158.ouroboros_ball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1158/tick

# 軌跡のエフェクト
    particle dust 0.204 0.09 0.62 1 ~ ~ ~ 0 0 0 0 1

# 回転
    execute store result storage asset:context this.Spin int 0.9999999999 run data get storage asset:context this.Spin
    execute if data storage asset:context this{Spin:7} run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.3827f,0.9239f]
    execute if data storage asset:context this{Spin:6} run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.7071f,0.7071f]
    execute if data storage asset:context this{Spin:5} run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.9239f,0.3827f]
    execute if data storage asset:context this{Spin:4} run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,1.0f,0.0f]
    execute if data storage asset:context this{Spin:3} run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.9239f,-0.3827f]
    execute if data storage asset:context this{Spin:2} run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.7071f,-0.7071f]
    execute if data storage asset:context this{Spin:1} run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.3827f,-0.9239f]
    execute if data storage asset:context this{Spin:0} run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.0f,1.0f]
    execute if data storage asset:context this{Spin:0} run data modify storage asset:context this.Spin set value 8

# super.tick
    execute at @s run function asset:object/super.tick
