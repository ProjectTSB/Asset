#> asset:object/2185.heiloang_storm_burst/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2185/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 独自処理
    execute if entity @s[scores={General.Object.Tick=..199}] run particle explosion ~ ~ ~ 0.5 0.5 0.5 0 1 force
    execute if entity @s[scores={General.Object.Tick=..199}] run particle sneeze ~ ~ ~ 1 1 1 0.05 1 force

# 移動
    execute if entity @s[scores={General.Object.Tick=30..199}] run tp @s ~ ~-1 ~
    execute if entity @s[scores={General.Object.Tick=..199}] unless block ~ ~-2 ~ #lib:no_collision/ run function asset:object/2185.heiloang_storm_burst/tick/damage

# 竜巻演出
    execute if entity @s[scores={General.Object.Tick=201..358}] run tp @s ~ ~ ~ ~-30 ~
    execute if entity @s[scores={General.Object.Tick=201..358}] on passengers at @s run tp @s ~ ~ ~ ~-30 ~
    execute if entity @s[scores={General.Object.Tick=201..217}] run particle explosion ~ ~4 ~ 3 10 3 0.1 3 force
    # Main
        execute if entity @s[scores={General.Object.Tick=201}] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,18f,0f],scale:[10f,13f,10f]}}
        execute if entity @s[scores={General.Object.Tick=213}] run data merge entity @s {interpolation_duration:4,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,29f,0f],scale:[0f,26f,0f]}}
    # Append
        execute if entity @s[scores={General.Object.Tick=201}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[20f,-1f,20f]}}
        execute if entity @s[scores={General.Object.Tick=207}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:21,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[50f,0f,50f]}}
        execute if entity @s[scores={General.Object.Tick=238}] on passengers if entity @s[type=item_display] run kill @s

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=300..}] on passengers run kill @s
    kill @s[scores={General.Object.Tick=300..}]
