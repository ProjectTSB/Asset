#> asset:object/2057.thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2057/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 雷
    execute if entity @s[scores={General.Object.Tick=0}] run function asset:object/2057.thunder/tick/thunder

# 念のための消滅処理
    kill @s[scores={General.Object.Tick=100..}]
