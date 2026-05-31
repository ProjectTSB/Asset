#> asset:object/2289.sharkboss_emp_blast/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2289/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# だんだん大きくなる
    #execute store result entity @s transformation.scale[0] float 0.3 run scoreboard players get @s General.Object.Tick
    #execute store result entity @s transformation.scale[1] float 0.3 run scoreboard players get @s General.Object.Tick
    #execute store result entity @s transformation.scale[2] float 0.3 run scoreboard players get @s General.Object.Tick
    #execute if score @s General.Object.Tick matches 20 run data modify entity @s transformation.scale set value [5f,5f,5f]

    execute if score @s General.Object.Tick matches 3 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 3 run data modify entity @s interpolation_duration set value 10
    execute if score @s General.Object.Tick matches 3 run data modify entity @s transformation.scale set value [14f,14f,14f]

# 消滅処理
    kill @s[scores={General.Object.Tick=10..}]
