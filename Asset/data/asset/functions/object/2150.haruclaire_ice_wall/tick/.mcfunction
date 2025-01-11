#> asset:object/2150.haruclaire_ice_wall/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2150/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.5f],scale:[3f,2f,3f]}}
    execute if entity @s[scores={General.Object.Tick=3}] on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0f,-0.25f],scale:[3f,2f,3f]}}
    execute if entity @s[scores={General.Object.Tick=5}] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.5f],scale:[5f,6f,5f]}}
    execute if entity @s[scores={General.Object.Tick=5}] on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0f,-0.25f],scale:[5f,5.2f,5f]}}

# 演出
    execute if entity @s[scores={General.Object.Tick=5..}] run particle firework ~ ~2 ~ 1 1 1 0.05 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2150.haruclaire_ice_wall/tick/attack

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=20..}] run function asset:object/2150.haruclaire_ice_wall/tick/kill
