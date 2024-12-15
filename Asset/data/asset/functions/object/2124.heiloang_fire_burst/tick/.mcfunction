#> asset:object/2124.heiloang_fire_burst/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2124/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 独自処理
    particle dust 0.839 0.275 0.255 3 ~ ~ ~ 0.5 0.5 0.5 0.05 5 force
    particle flame ~ ~ ~ 0.5 0.5 0.5 0.05 5 force

    execute if entity @s[scores={General.Object.Tick=10}] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0f],scale:[2f,2f,2f]}}
    execute if entity @s[scores={General.Object.Tick=11}] run data modify entity @s teleport_duration set value 1

    scoreboard players add @s 2124.Count 1
    execute if entity @s[scores={2124.Count=4..}] run scoreboard players set @s 2124.Count 1
    execute if entity @s[scores={2124.Count=1}] run data modify entity @s text set value '{"text":"0","font":"mob/410/flame"}'
    execute if entity @s[scores={2124.Count=2}] run data modify entity @s text set value '{"text":"1","font":"mob/410/flame"}'
    execute if entity @s[scores={2124.Count=3}] run data modify entity @s text set value '{"text":"2","font":"mob/410/flame"}'


# 移動
    execute if entity @s[scores={General.Object.Tick=50..}] run tp @s ~ ~-1 ~
    execute unless block ~ ~-1 ~ #lib:no_collision run function asset:object/2124.heiloang_fire_burst/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
