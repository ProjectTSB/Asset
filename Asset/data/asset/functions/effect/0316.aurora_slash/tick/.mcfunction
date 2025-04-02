#> asset:effect/0316.aurora_slash/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0316.aurora_slash/_/tick

# スコア
    scoreboard players add @s 316.Tick 1

# 斬撃1
    execute if score @s 316.Tick matches 1 run function asset:effect/0316.aurora_slash/tick/slash/1
    execute if score @s 316.Tick matches 4 run function asset:effect/0316.aurora_slash/tick/slash/2
    execute if score @s 316.Tick matches 8 run function asset:effect/0316.aurora_slash/tick/slash/3
