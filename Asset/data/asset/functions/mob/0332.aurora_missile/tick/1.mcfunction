#> asset:mob/0332.aurora_missile/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0332.aurora_missile/_/tick

# スコア
    scoreboard players add @s 98.Tick 1

# ノーマル以下
    execute if predicate api:global_vars/difficulty/max/normal run function asset:mob/0332.aurora_missile/tick/2.tick_normal

# ハード以上
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0332.aurora_missile/tick/3.tick_hard
