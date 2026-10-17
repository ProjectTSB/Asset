#> asset:effect/0378.bubble_shoot/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0378.bubble_shoot/_/tick

    scoreboard players add @s 178.Tick 1
# 振りぬく音
    execute if score @s 178.Tick matches 1 run function asset:effect/0378.bubble_shoot/tick/vfx/1
# しゃぼんを軌跡に沿って召喚
    execute if score @s 178.Tick matches 1 positioned ^-1.7 ^1.8 ^1.2 run function asset:effect/0378.bubble_shoot/tick/summon
    execute if score @s 178.Tick matches 2 positioned ^-0.85 ^1.6 ^1.2 run function asset:effect/0378.bubble_shoot/tick/summon
    execute if score @s 178.Tick matches 3 positioned ^0 ^1.4 ^1.2 run function asset:effect/0378.bubble_shoot/tick/summon
    execute if score @s 178.Tick matches 4 positioned ^0.85 ^1.2 ^1.2 run function asset:effect/0378.bubble_shoot/tick/summon
    execute if score @s 178.Tick matches 5 positioned ^1.7 ^1.0 ^1.2 run function asset:effect/0378.bubble_shoot/tick/summon
