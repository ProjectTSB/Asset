#> asset:object/2104.lexiel_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2104/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# レーザー出る
    execute if score @s General.Object.Tick matches 20 run function asset:object/2104.lexiel_laser/tick/shot

    execute if score @s General.Object.Tick matches 25 run data modify entity @s interpolation_duration set value 10
    execute if score @s General.Object.Tick matches 25 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 25 run data modify entity @s transformation.scale set value [0f,20f,0f]

# 消滅処理
    kill @s[scores={General.Object.Tick=30..}]
