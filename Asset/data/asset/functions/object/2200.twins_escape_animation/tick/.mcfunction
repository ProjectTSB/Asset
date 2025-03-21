#> asset:object/2200.twins_escape_animation/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2200/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# サフィ
    execute as @e[type=item_display,tag=9F.ModelRoot] at @s run function asset:object/2200.twins_escape_animation/tick/event_sapphiel

# ルビィ
    execute as @e[type=item_display,tag=9G.ModelRoot] at @s run function asset:object/2200.twins_escape_animation/tick/event_rubiel

# 消滅処理
    kill @s[scores={General.Object.Tick=68..}]
