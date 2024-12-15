#> asset:object/2127.heiloang_ice_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2127/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[scores={General.Object.Tick=3}] run particle end_rod ~ ~2 ~ 0.5 0.5 0.5 0.5 30
    execute if entity @s[scores={General.Object.Tick=3}] on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[6f,8f,6f]}}
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[6f,8f,6f]}}
    execute if entity @s[scores={General.Object.Tick=8}] run playsound block.amethyst_block.place hostile @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={General.Object.Tick=8}] run playsound block.amethyst_block.place hostile @a ~ ~ ~ 3 0.8
    execute if entity @s[scores={General.Object.Tick=8}] run playsound block.amethyst_block.place hostile @a ~ ~ ~ 3 0.9
    execute if entity @s[scores={General.Object.Tick=8..60}] run particle firework ~ ~2 ~ 3 3 3 0.05 1

    execute if entity @s[scores={General.Object.Tick=11}] on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[6f,6f,6f]}}
    execute if entity @s[scores={General.Object.Tick=11}] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3.5f,0f],scale:[5.5f,7f,5.5f]}}
    execute if entity @s[scores={General.Object.Tick=21}] on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:15,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
    execute if entity @s[scores={General.Object.Tick=21}] run data merge entity @s {start_interpolation:0,interpolation_duration:15,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[0f,0f,0f]}}
    # execute if entity @s[scores={General.Object.Tick=20}] on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:6,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[5f,1f,5f]}}
    # execute if entity @s[scores={General.Object.Tick=20}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[5f,1f,5f]}}
    # execute if entity @s[scores={General.Object.Tick=14}] run function asset:object/2127.heiloang_ice_vfx/tick/particle
    execute if entity @s[scores={General.Object.Tick=14..35}] run function asset:object/2127.heiloang_ice_vfx/tick/particle

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=35..}] run function asset:object/2127.heiloang_ice_vfx/tick/kill
