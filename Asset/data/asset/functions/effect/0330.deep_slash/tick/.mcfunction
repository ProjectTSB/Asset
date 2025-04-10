#> asset:effect/0330.deep_slash/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0330.deep_slash/_/tick

# スコア
    scoreboard players add @s 330.Tick 1

# 斬撃
    execute if score @s 330.Tick matches 1 run function asset:effect/0330.deep_slash/tick/slash/1
    execute if score @s 330.Tick matches 4 run function asset:effect/0330.deep_slash/tick/slash/2
    execute if score @s 330.Tick matches 7 run function asset:effect/0330.deep_slash/tick/slash/3
    execute if score @s 330.Tick matches 10 run function asset:effect/0330.deep_slash/tick/slash/4
    execute if score @s 330.Tick matches 20 run function asset:effect/0330.deep_slash/tick/slash/5
