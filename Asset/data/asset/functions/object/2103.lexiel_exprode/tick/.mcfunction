#> asset:object/2103.lexiel_exprode/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2103/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

    execute if score @s General.Object.Tick matches 2 unless predicate api:global_vars/difficulty/hard run data modify entity @s transformation.scale set value [8f,18f,8f]
    execute if score @s General.Object.Tick matches 2 if predicate api:global_vars/difficulty/hard run data modify entity @s transformation.scale set value [12f,18f,12f]

    execute if score @s General.Object.Tick matches 34 unless predicate api:global_vars/difficulty/hard run function asset:object/2103.lexiel_exprode/tick/damage
    execute if score @s General.Object.Tick matches 34 if predicate api:global_vars/difficulty/hard run function asset:object/2103.lexiel_exprode/tick/hard_damage
