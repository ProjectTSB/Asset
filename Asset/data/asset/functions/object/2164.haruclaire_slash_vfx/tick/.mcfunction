#> asset:object/2164.haruclaire_slash_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2164/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[50f,28f,50f]}}
    execute if entity @s[scores={General.Object.Tick=3}] on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[40f,17f,50f]}}

# 縮小
    execute if entity @s[scores={General.Object.Tick=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[60f,0f,50f]}}
    execute if entity @s[scores={General.Object.Tick=5}] on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:8,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[80f,0f,50f]}}

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=15..}] on passengers run kill @s
    kill @s[scores={General.Object.Tick=15..}]
