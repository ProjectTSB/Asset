#> asset:object/1154.flame_explode/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1154/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

#
    execute if score @s General.Object.Tick matches 1 run function asset:object/1154.flame_explode/tick/vfx/1

    execute if score @s General.Object.Tick matches 4 run function asset:object/1154.flame_explode/tick/explode

# 消滅処理
    kill @s[scores={General.Object.Tick=10..}]
