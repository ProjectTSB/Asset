#> asset:object/2130.heiloang_circle_vfx/tick/spin
#
# Objectのtick時の処理
#
# @within asset:object/2130.heiloang_circle_vfx/tick/

# Tick加算
    scoreboard players add @s 2130.Count 1
    execute if entity @s[scores={2130.Count=5..}] run scoreboard players set @s 2130.Count 1

# 回転
    data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={2130.Count=1}] run data modify entity @s transformation.left_rotation set value {axis:[0f,0f,1f],angle:4.71f}
    execute if entity @s[scores={2130.Count=2}] run data modify entity @s transformation.left_rotation set value {axis:[0f,0f,1f],angle:3.14f}
    execute if entity @s[scores={2130.Count=3}] run data modify entity @s transformation.left_rotation set value {axis:[0f,0f,1f],angle:1.57f}
    execute if entity @s[scores={2130.Count=4}] run data modify entity @s transformation.left_rotation set value {axis:[0f,0f,1f],angle:0f}
    data modify entity @s transformation.scale set from storage asset:context this.ScaleMain
