#> asset:object/2035.pumpkin_display/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2035/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=21..}]
