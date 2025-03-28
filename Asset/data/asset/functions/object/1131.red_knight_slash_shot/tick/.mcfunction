#> asset:object/1131.red_knight_slash_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1131/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
