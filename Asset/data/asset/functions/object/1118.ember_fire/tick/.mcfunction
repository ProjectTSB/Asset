#> asset:object/1118.ember_fire/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1118/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# でかなる
    execute if score @s General.Object.Tick matches 5 run data modify entity @s interpolation_duration set value 2
    execute if score @s General.Object.Tick matches 5 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 5 run data modify entity @s transformation.scale set value [8f,12f,8f]
    execute if score @s General.Object.Tick matches 5 run data modify entity @s transformation.translation set value [-4f,0f,-4f]

# ちいさなる
    execute if score @s General.Object.Tick matches 15 run data modify entity @s interpolation_duration set value 10
    execute if score @s General.Object.Tick matches 15 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 15 run data modify entity @s transformation.scale set value [8f,0f,8f]

# 消滅処理
    kill @s[scores={General.Object.Tick=25..}]
