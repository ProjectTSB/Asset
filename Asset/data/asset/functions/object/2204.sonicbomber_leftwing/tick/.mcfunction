#> asset:object/2204.sonicbomber_leftwing/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2204/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=100..}] run kill @e[tag=5X.Centre]
    kill @s[scores={General.Object.Tick=100..}]
