#> asset:effect/0378.bubble_shoot/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0378.bubble_shoot/_/tick

# 振りぬく音
    execute if data storage asset:context this{Tick:5} run function asset:effect/0378.bubble_shoot/tick/vfx/sound
# しゃぼんを軌跡に沿って召喚
    execute if data storage asset:context this{Tick:5} positioned ^-1.7 ^1.8 ^1.2 run function asset:effect/0378.bubble_shoot/tick/summon
    execute if data storage asset:context this{Tick:4} positioned ^-0.85 ^1.6 ^1.2 run function asset:effect/0378.bubble_shoot/tick/summon
    execute if data storage asset:context this{Tick:3} positioned ^0 ^1.4 ^1.2 run function asset:effect/0378.bubble_shoot/tick/summon
    execute if data storage asset:context this{Tick:2} positioned ^0.85 ^1.2 ^1.2 run function asset:effect/0378.bubble_shoot/tick/summon
    execute if data storage asset:context this{Tick:1} positioned ^1.7 ^1.0 ^1.2 run function asset:effect/0378.bubble_shoot/tick/summon
# デクリメント
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
