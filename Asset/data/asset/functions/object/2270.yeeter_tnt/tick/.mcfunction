#> asset:object/2270.yeeter_tnt/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2270/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[scores={General.Object.Tick=20}] run data modify entity @s start_interpolation set value -1
    execute if entity @s[scores={General.Object.Tick=20}] run data modify entity @s transformation.translation set value [0.0f,0.75f,0.0f]
    execute if entity @s[scores={General.Object.Tick=20}] run data modify entity @s transformation.scale set value [3.0f,3.0f,3.0f]
    execute if entity @s[scores={General.Object.Tick=45}] run data modify entity @s start_interpolation set value -1
    execute if entity @s[scores={General.Object.Tick=45}] run data modify entity @s transformation.scale set value [0.0f,6.0f,0.0f]
    execute if entity @s[scores={General.Object.Tick=45}] run data modify entity @s transformation.scale set value [6.0f,6.0f,6.0f]

# 攻撃
    execute if entity @s[scores={General.Object.Tick=1..5}] run tp @s ~ ~-1 ~
    execute if entity @s[tag=!2270.NoPrediction,scores={General.Object.Tick=1}] positioned ~ ~-5 ~ run function asset:object/2270.yeeter_tnt/tick/prediction.m {PredictionTime:60}
    execute if entity @s[scores={General.Object.Tick=60..}] at @s run function asset:object/2270.yeeter_tnt/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=60..}]
