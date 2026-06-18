#> asset:object/1166.after_glow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1166/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    function asset:object/1166.after_glow/tick/preview
    execute if score @s General.Object.Tick matches 600.. run function asset:object/1166.after_glow/tick/beem
# 消滅処理
    kill @s[scores={General.Object.Tick=600..}]
