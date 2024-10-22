#> asset:object/2074.water_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2074/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
