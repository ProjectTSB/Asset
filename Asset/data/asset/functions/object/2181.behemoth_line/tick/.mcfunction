#> asset:object/2181.behemoth_line/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2181/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 表示
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2181.behemoth_line/tick/show_line

# 消滅処理
    kill @s[scores={General.Object.Tick=500..}]
