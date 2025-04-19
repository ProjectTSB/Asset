#> asset:object/2103.lexiel_exprode/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2103/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# ダメージ
    execute if score @s General.Object.Tick matches 34 unless predicate api:global_vars/difficulty/hard run function asset:object/2103.lexiel_exprode/tick/damage
    execute if score @s General.Object.Tick matches 34 if predicate api:global_vars/difficulty/hard run function asset:object/2103.lexiel_exprode/tick/hard_damage
