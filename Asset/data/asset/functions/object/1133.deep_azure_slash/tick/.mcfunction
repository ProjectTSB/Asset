#> asset:object/1133.deep_azure_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1133/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=5..}]

