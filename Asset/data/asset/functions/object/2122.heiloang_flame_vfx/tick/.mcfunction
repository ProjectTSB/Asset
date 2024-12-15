#> asset:object/2122.heiloang_flame_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2122/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    scoreboard players add @s 2122.Tick 1
    execute if entity @s[scores={2122.Tick=4..}] run scoreboard players set @s 2122.Tick 1

# 演出
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-3.5f,0f],scale:[4f,4f,4f]}}
    execute if entity @s[scores={General.Object.Tick=6}] run data modify entity @s teleport_duration set value 1
    execute if entity @s[scores={2122.Tick=1}] run data modify entity @s text set value '{"text":"0","font":"mob/410/flame"}'
    execute if entity @s[scores={2122.Tick=2}] run data modify entity @s text set value '{"text":"1","font":"mob/410/flame"}'
    execute if entity @s[scores={2122.Tick=3}] run data modify entity @s text set value '{"text":"2","font":"mob/410/flame"}'
    execute if entity @s[scores={General.Object.Tick=57}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

# 消滅処理
    kill @s[scores={General.Object.Tick=62..}]
