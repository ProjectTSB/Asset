#> asset:object/2170.astro_teleport/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2170/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 30Tick時にテレポートとダメージ
    execute if score @s General.Object.Tick matches 30 run function asset:object/2170.astro_teleport/tick/teleport

# 消滅処理
    kill @s[scores={General.Object.Tick=31..}]
