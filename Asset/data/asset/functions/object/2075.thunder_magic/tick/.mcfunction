#> asset:object/2075.thunder_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2075/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 雷
    execute if entity @s[scores={General.Object.Tick=20..}] run function asset:object/2075.thunder_magic/tick/thunder

# 消滅処理
    # kill @s[scores={General.Object.Tick=1000..}]
