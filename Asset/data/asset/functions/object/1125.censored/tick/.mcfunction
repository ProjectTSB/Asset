#> asset:object/1125.censored/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1125/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
# 消滅処理
    kill @s[scores={General.Object.Tick=20..}]
