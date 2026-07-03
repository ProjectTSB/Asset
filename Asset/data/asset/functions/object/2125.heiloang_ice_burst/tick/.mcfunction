#> asset:object/2125.heiloang_ice_burst/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2125/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 独自処理
    execute if entity @s[scores={General.Object.Tick=5}] run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0f],scale:[3f,3f,3f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20332}}}
    execute if entity @s[scores={General.Object.Tick=45..}] run particle dust 0.506 0.882 1 3 ~ ~ ~ 0.5 0.5 0.5 0.05 5 force
    execute if entity @s[scores={General.Object.Tick=45..}] run particle firework ~ ~ ~ 0.5 0.5 0.5 0.05 5 force

# 移動
    # execute if entity @s[scores={General.Object.Tick=30..}] run tp @s ~ ~-1 ~
    # execute unless block ~ ~-1 ~ #lib:no_collision/ run function asset:object/2125.heiloang_ice_burst/tick/damage
    execute if entity @s[scores={General.Object.Tick=45..}] run tp @s ~ ~-2 ~
    execute if entity @s[scores={General.Object.Tick=60..}] positioned ~ ~0.5 ~ run function asset:object/2125.heiloang_ice_burst/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
