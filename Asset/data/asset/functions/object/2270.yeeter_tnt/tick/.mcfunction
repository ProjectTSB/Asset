#> asset:object/2270.yeeter_tnt/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2270/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=1..5}] run tp @s ~ ~-1 ~
    execute if entity @s[scores={General.Object.Tick=1}] positioned ~ ~-5 ~ run function asset:object/2270.yeeter_tnt/tick/prediction.m {PredictionTime:20}
    execute if entity @s[scores={General.Object.Tick=20..}] at @s run function asset:object/2270.yeeter_tnt/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=20..}]
