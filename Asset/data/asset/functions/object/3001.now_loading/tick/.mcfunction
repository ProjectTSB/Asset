#> asset:object/3001.now_loading/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3001/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=2}]
