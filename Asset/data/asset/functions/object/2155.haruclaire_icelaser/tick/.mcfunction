#> asset:object/2155.haruclaire_icelaser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2155/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if entity @s[scores={General.Object.Tick=..55}] run particle firework ~ ~ ~ 0 0 0 0.1 1
    execute if entity @s[scores={General.Object.Tick=..55}] run particle cloud ~ ~ ~ 0 0 0 0.1 2
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,20f,20f]}}
    execute if entity @s[scores={General.Object.Tick=6}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[18f,18f,20f]}}
    execute if entity @s[scores={General.Object.Tick=55}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,20f]}}
    execute if entity @s[scores={General.Object.Tick=3..55}] run function asset:object/2155.haruclaire_icelaser/tick/attack

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=60..}] run function asset:object/2155.haruclaire_icelaser/tick/kill
