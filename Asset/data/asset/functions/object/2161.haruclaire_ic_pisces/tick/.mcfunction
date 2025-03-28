#> asset:object/2161.haruclaire_ic_pisces/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2161/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
