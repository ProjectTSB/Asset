#> asset:object/2050.lastboss_light_pillar/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2050/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 数Tick後加速して飛んでいく

# 回る
#    execute if score @s General.Object.Tick matches 2 run data modify entity @s start_interpolation set value 1
#    execute if score @s General.Object.Tick matches 2 run data modify entity @s transformation.left_rotation set value [-0.5f,0.5f,-0.5f,0.5f]
#
#    execute if score @s General.Object.Tick matches 4 run data modify entity @s start_interpolation set value 1
#    execute if score @s General.Object.Tick matches 4 run data modify entity @s transformation.left_rotation set value [0.0f,0.7f,-0.7f,0.0f]
#
#    execute if score @s General.Object.Tick matches 6 run data modify entity @s start_interpolation set value 1
#    execute if score @s General.Object.Tick matches 6 run data modify entity @s transformation.left_rotation set value [0.5f,0.5f,-0.5f,-0.5f]
#
#    execute if score @s General.Object.Tick matches 8 run data modify entity @s start_interpolation set value 1
#    execute if score @s General.Object.Tick matches 8 run data modify entity @s transformation.left_rotation set value [0.7f,0.0f,0.0f,-0.7f]
#
#    execute if score @s General.Object.Tick matches 10 run scoreboard players reset @s General.Object.Tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# Super!
    function asset:object/super.tick
