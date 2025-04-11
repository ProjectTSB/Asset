#> asset:effect/0330.deep_slash/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0330.deep_slash/_/tick

# スコア
    scoreboard players add @s 330.Tick 1

# 斬撃
    execute if score @s 330.Tick matches 1 run function asset:effect/0330.deep_slash/tick/slash/1
    execute if score @s 330.Tick matches 3 run function asset:effect/0330.deep_slash/tick/slash/2
    execute if score @s 330.Tick matches 5 run function asset:effect/0330.deep_slash/tick/slash/3
    execute if score @s 330.Tick matches 7 run function asset:effect/0330.deep_slash/tick/slash/4
    execute if score @s 330.Tick matches 18 run function asset:effect/0330.deep_slash/tick/slash/5

# 5段目の直前に速度バフ
    execute if score @s 330.Tick matches 9 run function asset:effect/0330.deep_slash/tick/speed_buff
