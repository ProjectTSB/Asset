#> asset:object/2124.heiloang_fire_burst/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2124/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 独自処理
    execute if entity @s[scores={General.Object.Tick=45..}] run particle dust 0.839 0.275 0.255 3 ~ ~ ~ 0.5 0.5 0.5 0.05 5 force
    execute if entity @s[scores={General.Object.Tick=45..}] run particle flame ~ ~ ~ 0.5 0.5 0.5 0.05 5 force

    execute if entity @s[scores={General.Object.Tick=45}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20454}}}
    execute if entity @s[scores={General.Object.Tick=46}] run data modify entity @s teleport_duration set value 1

# 移動
    execute if entity @s[scores={General.Object.Tick=70..}] run tp @s ~ ~-3 ~
    # execute unless block ~ ~-1 ~ #lib:no_collision/ run function asset:object/2124.heiloang_fire_burst/tick/damage
    execute if entity @s[scores={General.Object.Tick=80..}] positioned ~ ~1.5 ~ run function asset:object/2124.heiloang_fire_burst/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
