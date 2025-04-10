#> asset:object/1120.staff_roll/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1120/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

    execute if score @s General.Object.Tick matches 4 run data merge entity @s {start_interpolation:0,interpolation_duration:4000,transformation:{translation:[0f,60f,0f]}}

# 消滅処理
    kill @s[scores={General.Object.Tick=4004..}]
