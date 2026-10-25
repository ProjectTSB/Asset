#> asset:object/2119.heiloang_wind_burst/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2119/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 独自処理
    # execute if entity @s[scores={General.Object.Tick=5}] run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-3f,0f],scale:[4f,4f,4f]}}
    particle explosion ~ ~ ~ 0.5 0.5 0.5 0 1 force

# 移動
    execute if entity @s[scores={General.Object.Tick=30..}] run tp @s ~ ~-1 ~
    execute unless block ~ ~-1 ~ #lib:no_collision/ run function asset:object/2119.heiloang_wind_burst/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
