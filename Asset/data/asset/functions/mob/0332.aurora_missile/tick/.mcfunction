#> asset:mob/0332.aurora_missile/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/332/tick

# スコア
    scoreboard players add @s 98.Tick 1

# ノーマル以下
    execute if predicate api:global_vars/difficulty/max/normal run function asset:mob/0332.aurora_missile/tick/2.normal

# ハード以上
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0332.aurora_missile/tick/3.hard
