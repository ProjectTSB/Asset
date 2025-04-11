#> asset:object/2177.behemoth_flaredive/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2177/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[tag=!2177.IsSlow,scores={General.Object.Tick=59}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[8f,50f,8f]}}
    execute if entity @s[tag=2177.IsSlow,scores={General.Object.Tick=79}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[8f,50f,8f]}}

# 攻撃
    execute if entity @s[tag=!2177.IsSlow,scores={General.Object.Tick=60}] run function asset:object/2177.behemoth_flaredive/tick/damage
    execute if entity @s[tag=2177.IsSlow,scores={General.Object.Tick=80}] run function asset:object/2177.behemoth_flaredive/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=83..}]
